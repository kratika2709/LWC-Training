trigger UpdateAssociatedContacttrigger on Account (after update) {
          UpdateAssociatedContact.ContactUpdation(trigger.oldmap,trigger.newmap);
}