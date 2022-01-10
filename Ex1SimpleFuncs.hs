
-- variable <outside main> is without let
anotherName = "Jemmy" :: String

hisWeight :: Double
hisWeight = 67.8

scores::[Int]
scores = [100, 200, 300, 400, 500, 600, 700]

-- one command function
sayOneStatement :: IO()
sayOneStatement = putStrLn("This is one command function")

-- multi-commands function
sayMultiStatements :: IO ()
sayMultiStatements = do
    putStrLn("This is multi-command function")
    putStrLn(".... bye ....")



printMultiLines :: Int -> IO()
printMultiLines numberOfLines = do
    if numberOfLines >= 6
        then putStrLn("Too much Lines!!!!!!")
    else do 
        putStrLn(".... " ++ show numberOfLines ++ " ....")
        printMultiLines (numberOfLines + 1)



-- one parameter function
cubeNumbers:: Int -> Int
cubeNumbers n = n*n*n


{-
-- three parameter function
mult3Numbers::Int -> Int -> Int -> Int
mult3Numbers n1 n2 n3 = (n1*n2)*n3
-}



main :: IO()
main = do
    -- print a string to the screen --
    putStrLn "Hello world!!!"

    -- print Int, Double, Bool to the screen --
    print(2)
    print(33.786)
    print(True)
    print('A')

    -- variable as let <inside main> -- you must write "show" before variable of any type except String
    -- "show" convert it to String
    let varName = "Tom"
    let numberOfBrothers = 3 :: Int
    putStrLn("His name is: " ++ varName ++ ", is this ok???")
    putStrLn("A man named " ++ varName ++ "has " ++ show numberOfBrothers ++ " Brothers" )
    putStrLn("One of his brothers is named " ++ anotherName ++ "!!!")
    putStrLn("His weight is: " ++ show hisWeight ++ " kg")
    putStrLn(".... Qoutation in the strings..............")
    putStrLn("Hello world!")
    putStrLn("Hello \"world\"!")

    -------------------------------------------------------------------------------------------------
    ---- Math operations ----------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------
    putStrLn(".... Math operations.......................")
    -- ** means power --
    print(3 ** 2)
    print(sqrt 36)

    putStrLn("round (3.5): " ++ show (round (3.5)))
    print("round (3.5): " ++ show (round (3.5)))
    putStrLn("round (3.2): " ++ show (round (3.2)))
    putStrLn("round (3.8): " ++ show (round (3.8)))
    putStrLn("ceiling (3.2): " ++ show (ceiling (3.2)))
    putStrLn("floor (3.2): " ++ show (floor (3.2)))

    -------------------------------------------------------------------------------------------------
    ---- IO operations ------------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------
    putStrLn(".... IO operations ........................")
    putStrLn("Give me a word: ")
    word <- getLine
    putStrLn("Your word is: " ++ word)

    putStr("Give me a word (again): ")
    word <- getLine
    putStrLn("Your word is: " ++ word)
    
    putStr("Enter your age: ")
    ageAsString <- getLine
    putStr("Your age is: " ++ ageAsString)
    
    let ageAsInt = read (ageAsString)::Int

    putStrLn""
    print(ageAsInt)
    
    print("Your age is: " ++ show (ageAsInt))

    -- covert string -> double
    let ageAsDouble = read (ageAsString) :: Double
    print("Your age is: " ++ show (ageAsDouble))

    -- Simple calculator
    putStr "Enter your first number: "
    yourFirstNumberAsString <- getLine

    putStr "Enter your second number: "
    yourSecondNumberAsString <- getLine

    let yourFirstNumber = read yourFirstNumberAsString::Int
    let yourSecondNumber = read yourSecondNumberAsString::Int

    let total = (yourFirstNumber + yourSecondNumber)::Int
    putStrLn("The total is: " ++ show total)
    

    -------------------------------------------------------------------------------------------------
    ---- List operations ----------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------
    putStrLn(".... List operations...................................")
    print(scores)
    putStr("Head: ")
    print(head scores)

    putStr("Tail: ")
    print(tail scores)

    putStr("Last element: ")
    print(last scores)

    putStr("Enter an index to get an element: ")
    yourIndexAsString <- getLine
    let yourIndex = read yourIndexAsString :: Int
    putStr("The element#" ++ show (yourIndex) ++ " is: " ++ show (scores !! yourIndex))
    putStrLn""

    -------------------------------------------------------------------------------------------------
    ---- Functions ----------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------
    
    sayOneStatement
    sayMultiStatements
    print(cubeNumbers (7)) 
    printMultiLines 3
    





