public class ScheduleAccountBatchOppCnt implements Schedulable{

    public void execute(SchedulableContext sc){
        AccountBatchOppCnt ac = new AccountBatchOppCnt();
        Database.executeBatch(ac,5);
    }
}
