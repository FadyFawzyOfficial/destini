import 'package:flutter/material.dart';

import 'story_brain.dart';

// COMPLETED: Step 15 - Run the app and see if you can see the screen update with the first story.
// Delete this 'TODO' if it looks as you expected.

void main() => runApp(const Destini());

class Destini extends StatelessWidget {
  const Destini({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const StoryPage(),
    );
  }
}

// COMPLETED: Step 9 - Create a new storyBrain object from the StoryBrain class.
StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  StoryPageState createState() => StoryPageState();
}

class StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
        constraints: const BoxConstraints.expand(),
        // COMPLETED: Step 1 - Add background.png to this Container as a background image.
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    // COMPLETED: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                    storyBrain.story,
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    // Choice 1 made by user.
                    // COMPLETED: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                    storyBrain.nextStory(1);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: Text(
                    // COMPLETED: Step 13 - Use the storyBrain to get the text for choice 1.
                    storyBrain.choice1,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                flex: 2,
                //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: TextButton(
                  onPressed: () {
                    //Choice 2 made by user.
                    //TODO: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(
                    // COMPLETED: Step 14 - Use the storyBrain to get the text for choice 2.
                    storyBrain.choice2,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/
