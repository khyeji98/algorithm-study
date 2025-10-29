# Time Complexity: O(n) -> n은 문자열 s의 길이
# Space Complexity: O(n) -> 최악의 경우 모든 여는 괄호가 스택에 쌓일 수 있음
class Solution:
    def isValid(self, s: str) -> bool:
        matching = {')': '(', '}': '{', ']': '['}
        stack = []

        for char in s:
            if char in '({[':
                stack.append(char)
            else:
                if not stack: return False  # 스택이 비어있는데 pop()을 호출하면 오류 발생하기 때문에 먼저 확인
                last = stack.pop()
                matched = matching[char]
                if last != matched: return False

        return len(stack) == 0