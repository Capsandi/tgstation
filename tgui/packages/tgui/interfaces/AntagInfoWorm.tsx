import { useBackend } from '../backend';
import { BlockQuote, LabeledList, Section, Stack } from '../components';
import { Window } from '../layouts';
import { Objective } from './common/Objectives';

type Info = {
  antag_name: string;
  objectives: Objective[];
};

export const AntagInfoWorm = (props) => {
  const { data } = useBackend<Info>();
  return (
    <Window width={620} height={250}>
      <Window.Content>
        <Section scrollable fill>
          <Stack vertical>
            <Stack.Item textColor="red" fontSize="22px">
              You have a multidimensional tapeworm!
            </Stack.Item>
            <Stack.Item textColor="white" fontSize="16px">
              Through integration with your central nervous system, the worm
              has communed that you are to aid it in further identification of
              its palate of choice: Sapient humanoids.
            </Stack.Item>
            <Stack.Divider />
            <Stack.Item textColor="white" fontSize="12px">
            <BlockQuote>
              Offer up pairs of your co-workers to save your own hide.
              Those you have flagged as viable feed will later be torn from
              this world to that of your parasite. One escapes, the other dies.
            </BlockQuote>
            </Stack.Item>
            <Stack.Item width="60%">
            <Section fill title="In Short">
              <LabeledList>
                <LabeledList.Item label="Offer">
                  Use either of the offering actions to tag two sapient
                  humanoids
                </LabeledList.Item>
                <LabeledList.Item label="Send">
                  You decide when your two victims are taken, not which will
                  be lost. Make sure to send your victims before the parasite
                  loses patience.
                </LabeledList.Item>
                <LabeledList.Item label="Evade">
                  Your methods of offering up your co-workers are unsubtle at
                  best. If station security doesnt catch on, those who return
                  from the maw will.
                </LabeledList.Item>
              </LabeledList>
            </Section>
            </Stack.Item>
          </Stack>
        </Section>
      </Window.Content>
    </Window>
  );
};
