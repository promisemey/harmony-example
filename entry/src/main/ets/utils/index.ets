type ResourceType = 'string' | 'media'

export const getResourceArray = (length: number, prefix: string, type: ResourceType = 'string'): Resource[] => {
  return Array.from({ length }, (_: undefined, index) => {
    return $r(`app.${type}.${prefix}_${index + 1}`)
  })
}