arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 
        'fffish', 'ffiiiiisshh', 'fsh', 
        'fiiiissshhhhhh']


#Sluggish

def sluggish # O(n^2)
    longest = "" 
    arr.each do |fishy|
        arr.each do |fishy2|
            if fishy.length > longest.length
                longest = fishy
            end
            if fishy2.length > longest.length
                longest = fishy2
            end
        end
    end
    longest
end

def dominant_octo # O(nlogn)
    arr.sort

    
end