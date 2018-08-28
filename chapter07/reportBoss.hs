module ReportBoss where


data Employee
    = Coder
    | Manager
    | Veep
    | CEO
    deriving (Eq, Ord, Show)

reportBoss :: Employee -> Employee -> IO ()
reportBoss e e' = putStrLn $ show e ++ " is the boss of " ++ show e'

codersRuleCEO :: Employee -> Employee -> Ordering
codersRuleCEO Coder Coder = EQ
codersRuleCEO Coder _     = GT
codersRuleCEO _     Coder = LT
codersRuleCEO e     e'    = compare e e'

employeeRank
    :: (Employee -> Employee -> Ordering) -> Employee -> Employee -> IO ()
employeeRank f e e' = case f e e' of
    GT -> reportBoss e e'
    EQ -> putStrLn "Neither employee is the boss"
    LT -> reportBoss e' e
