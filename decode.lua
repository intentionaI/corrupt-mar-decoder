function findJew(str, num)
if num == 0 then return nil,nil end
   if str:match('&assetVersionId=.0x'..string.rep("%x", num)..".") ~= nil then return str:match('&assetVersionId=.0x'..string.rep("%x", num).."."), num else return findJew(str, num-1) end
end


local decoded, num = findJew(a, 9)
if decoded == nil then print("could not decode")
else
decoded = decoded:gsub('&Id%%9Z=..', '')
decoded = decoded:sub(1,num+2)
print(tonumber(decoded))
end
