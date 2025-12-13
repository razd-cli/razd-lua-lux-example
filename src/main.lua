-- My Lua Project
-- A simple Lux project example

print("Hello from Lux!")

-- Check if a string contains "hello"
local function contains_hello(text)
    return string.lower(text):find("hello") ~= nil
end

-- Example usage
local test_strings = {
    "Hello, World!",
    "Good morning",
    "Say hello to Lua",
    "Goodbye"
}

print("\nChecking for 'hello' in strings:")
print(string.rep("-", 40))

for _, str in ipairs(test_strings) do
    local result = contains_hello(str) and "✓ contains 'hello'" or "✗ no 'hello'"
    print(string.format("%-20s -> %s", str, result))
end
