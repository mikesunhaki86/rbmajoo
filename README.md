This test using Selenium Web Driver + Cucumber + Gherkin + Ruby

Command to Run: 

A. Execute all scenarios

    - Run terminal/command prompt.
    - Go to the project directory
    - Type command cucumber
    - Press Enter (wait for automation to finish running)

B. Running a certain scenario

    - Run terminal/command prompt.
    - Go to the project directory
    - Type command cucumber -t @abcd
    - Press Enter (wait for automation to finish running)

C. Running scenarios while making reports

    - Run terminal/command prompt.
    - Go to the project directory
    - Type command cucumber -f pretty --expand -f json -o <report_name>.json or cucumber -f pretty --expand -f html -o <report_name>.html
    - Press Enter (wait for automation to finish running)
    - Type ruby report_builder.rb