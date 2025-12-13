-- My Lua Project
-- A CLI that checks if a string contains "hello"

local argparse = require("argparse")

-- Create the argument parser
local parser = argparse("hello-checker", "Check if a string contains 'hello'")

parser:argument("input", "The string to check for 'hello'")
parser:flag("-i --ignore-case", "Ignore case when checking (default: true)")
parser:flag("-v --verbose", "Show verbose output")

-- Parse arguments
local args = parser:parse()

-- Check if a string contains "hello"
local function contains_hello(text, ignore_case)
    if ignore_case then
        return string.lower(text):find("hello") ~= nil
    else
        return text:find("hello") ~= nil
    end
end

-- Run the check
local input = args.input
local ignore_case = not args.ignore_case -- default is to ignore case
local result = contains_hello(input, ignore_case)

if args.verbose then
    print("Input: " .. input)
    print("Ignore case: " .. tostring(ignore_case))
    print(string.rep("-", 40))
end

if result then
    print("[+] The string contains 'hello'!")
else
    print("[-] The string does not contain 'hello'.")
end
