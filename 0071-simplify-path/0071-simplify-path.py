class Solution:
    def simplifyPath(self, path: str) -> str:
        components = path.split('/')
        result = []

        for com in components:
            if com == "" or com == ".":
                continue

            if com == "..":
                if result:
                    result.pop()

            else:
                result.append(com)

        return "/" + "/".join(result)                



