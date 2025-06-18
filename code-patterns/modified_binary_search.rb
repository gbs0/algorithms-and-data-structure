
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_rotated_array(nums, target)
  left = 0
  right = nums.length - 1

  while left <= right
    mid = left + (right - left) / 2

    return mid if nums[mid] == target

    # Determina qual metade está ordenada
    if nums[left] <= nums[mid] # A metade esquerda está ordenada
      if target >= nums[left] && target < nums[mid]
        # O alvo está na metade esquerda ordenada
        right = mid - 1
      else
        # O alvo está na metade direita não ordenada (ou na outra parte)
        left = mid + 1
      end
    else # A metade direita está ordenada
      if target > nums[mid] && target <= nums[right]
        # O alvo está na metade direita ordenada
        left = mid + 1
      else
        # O alvo está na metade esquerda não ordenada (ou na outra parte)
        right = mid - 1
      end
    end
  end

  -1 # Elemento não encontrado
end

# Exemplos de uso:
nums1 = [4, 5, 6, 7, 0, 1, 2]
target1 = 0
p search_rotated_array(nums1, target1) # Saída: 4

nums2 = [4, 5, 6, 7, 0, 1, 2]
target2 = 3
p search_rotated_array(nums2, target2) # Saída: -1

nums3 = [1]
target3 = 1
p search_rotated_array(nums3, target3) # Saída: 0

nums4 = [1, 3]
target4 = 3
p search_rotated_array(nums4, target4) # Saída: 1
