# Time Complexity: O(n) -> n은 문자열 s의 길이
# Space Complexity: O(n) -> 최악의 경우 모든 여는 괄호가 스택에 쌓일 수 있음

class Solution:
    def isValid(self, s: str) -> bool:
        if len(s) & 1: return False # 정수의 마지막 비트가 1이면 홀수라는 뜻, 문자열 길이가 홀수면 무조건 False

        pair = {')': '(', '}': '{', ']': '['}
        stack = []
        push = stack.append
        pop = stack.pop # 파이썬의 리스트는 pop을 제공함

        for char in s:
            if char in pair.values():  # 여는 괄호일 경우
                push(char)
            else:
                # 스택이 비어있는데 pop()을 호출하면 오류 발생하기 때문에 먼저 확인
                if not stack or pop() != pair[char]: return False

        return len(stack) == 0