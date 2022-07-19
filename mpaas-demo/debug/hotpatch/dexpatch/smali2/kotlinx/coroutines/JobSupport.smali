.class public Lkotlinx/coroutines/JobSupport;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/ChildJob;
.implements Lkotlinx/coroutines/Job;
.implements Lkotlinx/coroutines/ParentJob;
.implements Lkotlinx/coroutines/selects/SelectClause0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/JobSupport$Finishing;,
        Lkotlinx/coroutines/JobSupport$ChildCompletion;,
        Lkotlinx/coroutines/JobSupport$AwaitContinuation;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n+ 6 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 7 CompletionHandler.common.kt\nkotlinx/coroutines/CompletionHandler_commonKt\n+ 8 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 9 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 10 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 11 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,1424:1\n351#1,2:1431\n353#1,4:1436\n357#1,4:1441\n361#1,2:1448\n351#1,2:1450\n353#1,4:1455\n357#1,4:1460\n361#1,2:1467\n174#1,2:1476\n174#1,2:1478\n174#1,2:1493\n174#1,2:1504\n174#1,2:1507\n174#1,2:1509\n174#1,2:1511\n174#1,2:1514\n174#1,2:1516\n174#1,2:1526\n93#2,2:1425\n20#3:1427\n20#3:1480\n20#3:1513\n20#3:1518\n240#4,2:1428\n85#5:1430\n85#5:1440\n85#5:1459\n85#5:1472\n657#6,3:1433\n660#6,3:1445\n657#6,3:1452\n660#6,3:1464\n657#6,3:1469\n660#6,3:1473\n47#7:1481\n22#8:1482\n22#8:1483\n13#8:1501\n13#8:1506\n13#8:1519\n13#8:1520\n13#8:1525\n13#8:1528\n148#9:1484\n84#9,3:1485\n149#9,5:1488\n197#10,6:1495\n203#10,2:1502\n150#11,4:1521\n*E\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n316#1,2:1431\n316#1,4:1436\n316#1,4:1441\n316#1,2:1448\n348#1,2:1450\n348#1,4:1455\n348#1,4:1460\n348#1,2:1467\n365#1,2:1476\n444#1,2:1478\n535#1,2:1493\n552#1,2:1504\n574#1,2:1507\n654#1,2:1509\n693#1,2:1511\n766#1,2:1514\n786#1,2:1516\n1180#1,2:1526\n164#1,2:1425\n208#1:1427\n444#1:1480\n693#1:1513\n823#1:1518\n248#1,2:1428\n264#1:1430\n316#1:1440\n348#1:1459\n352#1:1472\n316#1,3:1433\n316#1,3:1445\n348#1,3:1452\n348#1,3:1464\n352#1,3:1469\n352#1,3:1473\n444#1:1481\n444#1:1482\n444#1:1483\n541#1:1501\n552#1:1506\n866#1:1519\n915#1:1520\n1162#1:1525\n1180#1:1528\n508#1:1484\n508#1,3:1485\n508#1,5:1488\n541#1,6:1495\n541#1,2:1502\n1152#1,4:1521\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
    message = "This is internal API and may be removed in the future releases"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00da\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0001\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0006\u00d0\u0001\u00d1\u0001\u00d2\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J+\u0010\u000f\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00112\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0013H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u001b\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010#\u001a\u0004\u0018\u00010\tH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008!\u0010\"J\u0015\u0010$\u001a\u0004\u0018\u00010\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008$\u0010\"J\u0019\u0010&\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010\u0011H\u0017\u00a2\u0006\u0004\u0008&\u0010\'J\u001f\u0010&\u001a\u00020\u00152\u000e\u0010%\u001a\n\u0018\u00010(j\u0004\u0018\u0001`)H\u0016\u00a2\u0006\u0004\u0008&\u0010*J\u0017\u0010+\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008+\u0010\'J\u0019\u0010.\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010\tH\u0000\u00a2\u0006\u0004\u0008,\u0010-J\u0019\u0010/\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008/\u0010\'J\u0019\u00100\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u00080\u0010-J\u0017\u00101\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u00081\u0010\'J\u0017\u00102\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u00082\u0010\'J)\u00105\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u0002032\u0008\u00104\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u00085\u00106J)\u0010;\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u0002072\u0006\u00109\u001a\u0002082\u0008\u0010:\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008;\u0010<J\u0019\u0010=\u001a\u00020\u00112\u0008\u0010%\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010@\u001a\u00020?H\u0002\u00a2\u0006\u0004\u0008@\u0010AJ\u0019\u0010B\u001a\u0004\u0018\u0001082\u0006\u0010\u0018\u001a\u000203H\u0002\u00a2\u0006\u0004\u0008B\u0010CJ\u0011\u0010D\u001a\u00060(j\u0002`)\u00a2\u0006\u0004\u0008D\u0010EJ\u0013\u0010F\u001a\u00060(j\u0002`)H\u0016\u00a2\u0006\u0004\u0008F\u0010EJ\u0011\u0010I\u001a\u0004\u0018\u00010\tH\u0000\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010J\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008J\u0010KJ\'\u0010L\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0018\u001a\u0002072\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0013H\u0002\u00a2\u0006\u0004\u0008L\u0010MJ\u0019\u0010N\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0018\u001a\u000203H\u0002\u00a2\u0006\u0004\u0008N\u0010OJ\u0017\u0010Q\u001a\u00020\u00052\u0006\u0010P\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008Q\u0010\'J\u0017\u0010T\u001a\u00020\u00152\u0006\u0010P\u001a\u00020\u0011H\u0010\u00a2\u0006\u0004\u0008R\u0010SJ\u0019\u0010X\u001a\u00020\u00152\u0008\u0010U\u001a\u0004\u0018\u00010\u0001H\u0000\u00a2\u0006\u0004\u0008V\u0010WJF\u0010a\u001a\u00020`2\u0006\u0010Y\u001a\u00020\u00052\u0006\u0010Z\u001a\u00020\u00052\'\u0010_\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u0008\\\u0012\u0008\u0008]\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u00150[j\u0002`^\u00a2\u0006\u0004\u0008a\u0010bJ6\u0010a\u001a\u00020`2\'\u0010_\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u0008\\\u0012\u0008\u0008]\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u00150[j\u0002`^\u00a2\u0006\u0004\u0008a\u0010cJ\u0013\u0010d\u001a\u00020\u0015H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008d\u0010\"J\u000f\u0010e\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008e\u0010fJ\u0013\u0010g\u001a\u00020\u0015H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008g\u0010\"J&\u0010j\u001a\u00020i2\u0014\u0010h\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00150[H\u0082\u0008\u00a2\u0006\u0004\u0008j\u0010kJ\u0019\u0010l\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008l\u0010-J\u0019\u0010n\u001a\u00020\u00052\u0008\u0010:\u001a\u0004\u0018\u00010\tH\u0000\u00a2\u0006\u0004\u0008m\u0010-J!\u0010q\u001a\u00020\u00052\u0008\u0010:\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0000\u00a2\u0006\u0004\u0008o\u0010pJD\u0010r\u001a\u0006\u0012\u0002\u0008\u00030\r2\'\u0010_\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u0008\\\u0012\u0008\u0008]\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u00150[j\u0002`^2\u0006\u0010Y\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008r\u0010sJ\u000f\u0010w\u001a\u00020tH\u0010\u00a2\u0006\u0004\u0008u\u0010vJ\u001f\u0010x\u001a\u00020\u00152\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008x\u0010yJ2\u0010{\u001a\u00020\u0015\"\u000e\u0008\u0000\u0010z\u0018\u0001*\u0006\u0012\u0002\u0008\u00030\r2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010\u0011H\u0082\u0008\u00a2\u0006\u0004\u0008{\u0010yJ\u0019\u0010Y\u001a\u00020\u00152\u0008\u0010%\u001a\u0004\u0018\u00010\u0011H\u0014\u00a2\u0006\u0004\u0008Y\u0010SJ\u0019\u0010|\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008|\u0010}J\u0010\u0010\u0080\u0001\u001a\u00020\u0015H\u0010\u00a2\u0006\u0004\u0008~\u0010\u007fJ\u0019\u0010\u0082\u0001\u001a\u00020\u00152\u0007\u0010\u0081\u0001\u001a\u00020\u0003\u00a2\u0006\u0006\u0008\u0082\u0001\u0010\u0083\u0001J\u001b\u0010\u0085\u0001\u001a\u00020\u00152\u0007\u0010\u0018\u001a\u00030\u0084\u0001H\u0002\u00a2\u0006\u0006\u0008\u0085\u0001\u0010\u0086\u0001J\u001e\u0010\u0087\u0001\u001a\u00020\u00152\n\u0010\u0018\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0002\u00a2\u0006\u0006\u0008\u0087\u0001\u0010\u0088\u0001JI\u0010\u008d\u0001\u001a\u00020\u0015\"\u0005\u0008\u0000\u0010\u0089\u00012\u000e\u0010\u008b\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u008a\u00012\u001d\u0010h\u001a\u0019\u0008\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00000\u008c\u0001\u0012\u0006\u0012\u0004\u0018\u00010\t0[\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u008d\u0001\u0010\u008e\u0001JX\u0010\u0092\u0001\u001a\u00020\u0015\"\u0004\u0008\u0000\u0010z\"\u0005\u0008\u0001\u0010\u0089\u00012\u000e\u0010\u008b\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u008a\u00012$\u0010h\u001a \u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008c\u0001\u0012\u0006\u0012\u0004\u0018\u00010\t0\u008f\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0090\u0001\u0010\u0091\u0001J\u001e\u0010\u0094\u0001\u001a\u00020\u00152\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0000\u00a2\u0006\u0006\u0008\u0093\u0001\u0010\u0088\u0001JX\u0010\u0096\u0001\u001a\u00020\u0015\"\u0004\u0008\u0000\u0010z\"\u0005\u0008\u0001\u0010\u0089\u00012\u000e\u0010\u008b\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u008a\u00012$\u0010h\u001a \u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008c\u0001\u0012\u0006\u0012\u0004\u0018\u00010\t0\u008f\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0095\u0001\u0010\u0091\u0001J\u000f\u0010\u0097\u0001\u001a\u00020\u0005\u00a2\u0006\u0005\u0008\u0097\u0001\u0010fJ\u001c\u0010\u0098\u0001\u001a\u00020\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0006\u0008\u0098\u0001\u0010\u0099\u0001J\u001c\u0010\u009a\u0001\u001a\u00020t2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0006\u0008\u009a\u0001\u0010\u009b\u0001J\u0011\u0010\u009c\u0001\u001a\u00020tH\u0007\u00a2\u0006\u0005\u0008\u009c\u0001\u0010vJ\u0011\u0010\u009d\u0001\u001a\u00020tH\u0016\u00a2\u0006\u0005\u0008\u009d\u0001\u0010vJ,\u0010\u009e\u0001\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u0002072\u0008\u0010:\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0006\u0008\u009e\u0001\u0010\u009f\u0001J,\u0010\u00a0\u0001\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u0002032\u0008\u00104\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001J\"\u0010\u00a2\u0001\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u0002032\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001J.\u0010\u00a4\u0001\u001a\u00020\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\t2\u0008\u0010:\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001J,\u0010\u00a6\u0001\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u0002032\u0008\u0010:\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001J-\u0010\u00a8\u0001\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u0002072\u0006\u0010\u001d\u001a\u0002082\u0008\u0010:\u001a\u0004\u0018\u00010\tH\u0082\u0010\u00a2\u0006\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001J\u0019\u0010\u00ab\u0001\u001a\u0004\u0018\u000108*\u00030\u00aa\u0001H\u0002\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001J\u001f\u0010\u00ad\u0001\u001a\u00020\u0015*\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0005\u0008\u00ad\u0001\u0010yJ\'\u0010\u00af\u0001\u001a\u00060(j\u0002`)*\u00020\u00112\u000b\u0008\u0002\u0010\u00ae\u0001\u001a\u0004\u0018\u00010tH\u0004\u00a2\u0006\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R\u001d\u0010\u00b4\u0001\u001a\t\u0012\u0004\u0012\u00020\u00010\u00b1\u00018F@\u0006\u00a2\u0006\u0008\u001a\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\u001a\u0010\u00b6\u0001\u001a\u0004\u0018\u00010\u00118D@\u0004X\u0084\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b5\u0001\u0010KR\u0018\u0010\u00b8\u0001\u001a\u00020\u00058D@\u0004X\u0084\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b7\u0001\u0010fR\u0018\u0010\u00ba\u0001\u001a\u00020\u00058P@\u0010X\u0090\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b9\u0001\u0010fR\u0018\u0010\u00bb\u0001\u001a\u00020\u00058V@\u0016X\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00bb\u0001\u0010fR\u0015\u0010\u00bc\u0001\u001a\u00020\u00058F@\u0006\u00a2\u0006\u0007\u001a\u0005\u0008\u00bc\u0001\u0010fR\u0015\u0010\u00bd\u0001\u001a\u00020\u00058F@\u0006\u00a2\u0006\u0007\u001a\u0005\u0008\u00bd\u0001\u0010fR\u0015\u0010\u00be\u0001\u001a\u00020\u00058F@\u0006\u00a2\u0006\u0007\u001a\u0005\u0008\u00be\u0001\u0010fR\u0018\u0010\u00bf\u0001\u001a\u00020\u00058T@\u0014X\u0094\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00bf\u0001\u0010fR\u001b\u0010\u00c3\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u00c0\u00018F@\u0006\u00a2\u0006\u0008\u001a\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001R\u0018\u0010\u00c5\u0001\u001a\u00020\u00058P@\u0010X\u0090\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00c4\u0001\u0010fR\u0016\u0010\u00c8\u0001\u001a\u00020\u00048F@\u0006\u00a2\u0006\u0008\u001a\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R\u001b\u0010\u00c9\u0001\u001a\u0004\u0018\u00010\u001e8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\t8@@\u0000X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00cb\u0001\u0010HR \u0010\u00cd\u0001\u001a\u0004\u0018\u00010\u0011*\u0004\u0018\u00010\t8B@\u0002X\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00cc\u0001\u0010>R\u001d\u0010\u00ce\u0001\u001a\u00020\u0005*\u0002038B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00ce\u0001\u0010\u00cf\u0001\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u00d3\u0001"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport;",
        "Lkotlinx/coroutines/Job;",
        "Lkotlinx/coroutines/ChildJob;",
        "Lkotlinx/coroutines/ParentJob;",
        "Lkotlinx/coroutines/selects/SelectClause0;",
        "",
        "active",
        "<init>",
        "(Z)V",
        "",
        "expect",
        "Lkotlinx/coroutines/NodeList;",
        "list",
        "Lkotlinx/coroutines/JobNode;",
        "node",
        "addLastAtomic",
        "(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z",
        "",
        "rootCause",
        "",
        "exceptions",
        "",
        "addSuppressedExceptions",
        "(Ljava/lang/Throwable;Ljava/util/List;)V",
        "state",
        "",
        "mode",
        "afterCompletionInternal",
        "(Ljava/lang/Object;I)V",
        "child",
        "Lkotlinx/coroutines/ChildHandle;",
        "attachChild",
        "(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;",
        "awaitInternal$kotlinx_coroutines_core",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitInternal",
        "awaitSuspend",
        "cause",
        "cancel",
        "(Ljava/lang/Throwable;)Z",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "(Ljava/util/concurrent/CancellationException;)V",
        "cancelCoroutine",
        "cancelImpl$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)Z",
        "cancelImpl",
        "cancelInternal",
        "cancelMakeCompleting",
        "cancelParent",
        "childCancelled",
        "Lkotlinx/coroutines/Incomplete;",
        "update",
        "completeStateFinalization",
        "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)V",
        "Lkotlinx/coroutines/JobSupport$Finishing;",
        "Lkotlinx/coroutines/ChildHandleNode;",
        "lastChild",
        "proposedUpdate",
        "continueCompleting",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V",
        "createCauseException",
        "(Ljava/lang/Object;)Ljava/lang/Throwable;",
        "Lkotlinx/coroutines/JobCancellationException;",
        "createJobCancellationException",
        "()Lkotlinx/coroutines/JobCancellationException;",
        "firstChild",
        "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/ChildHandleNode;",
        "getCancellationException",
        "()Ljava/util/concurrent/CancellationException;",
        "getChildJobCancellationCause",
        "getCompletedInternal$kotlinx_coroutines_core",
        "()Ljava/lang/Object;",
        "getCompletedInternal",
        "getCompletionExceptionOrNull",
        "()Ljava/lang/Throwable;",
        "getFinalRootCause",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/util/List;)Ljava/lang/Throwable;",
        "getOrPromoteCancellingList",
        "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;",
        "exception",
        "handleJobException",
        "handleOnCompletionException$kotlinx_coroutines_core",
        "(Ljava/lang/Throwable;)V",
        "handleOnCompletionException",
        "parent",
        "initParentJobInternal$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/Job;)V",
        "initParentJobInternal",
        "onCancelling",
        "invokeImmediately",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlinx/coroutines/CompletionHandler;",
        "handler",
        "Lkotlinx/coroutines/DisposableHandle;",
        "invokeOnCompletion",
        "(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;",
        "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;",
        "join",
        "joinInternal",
        "()Z",
        "joinSuspend",
        "block",
        "",
        "loopOnState",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;",
        "makeCancelling",
        "makeCompleting$kotlinx_coroutines_core",
        "makeCompleting",
        "makeCompletingOnce$kotlinx_coroutines_core",
        "(Ljava/lang/Object;I)Z",
        "makeCompletingOnce",
        "makeNode",
        "(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;",
        "",
        "nameString$kotlinx_coroutines_core",
        "()Ljava/lang/String;",
        "nameString",
        "notifyCancelling",
        "(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V",
        "T",
        "notifyHandlers",
        "onCompletionInternal",
        "(Ljava/lang/Object;)V",
        "onStartInternal$kotlinx_coroutines_core",
        "()V",
        "onStartInternal",
        "parentJob",
        "parentCancelled",
        "(Lkotlinx/coroutines/ParentJob;)V",
        "Lkotlinx/coroutines/Empty;",
        "promoteEmptyToNodeList",
        "(Lkotlinx/coroutines/Empty;)V",
        "promoteSingleToNodeList",
        "(Lkotlinx/coroutines/JobNode;)V",
        "R",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "select",
        "Lkotlin/coroutines/Continuation;",
        "registerSelectClause0",
        "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V",
        "Lkotlin/Function2;",
        "registerSelectClause1Internal$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V",
        "registerSelectClause1Internal",
        "removeNode$kotlinx_coroutines_core",
        "removeNode",
        "selectAwaitCompletion$kotlinx_coroutines_core",
        "selectAwaitCompletion",
        "start",
        "startInternal",
        "(Ljava/lang/Object;)I",
        "stateString",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "toDebugString",
        "toString",
        "tryFinalizeFinishingState",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;I)Z",
        "tryFinalizeSimpleState",
        "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)Z",
        "tryMakeCancelling",
        "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z",
        "tryMakeCompleting",
        "(Ljava/lang/Object;Ljava/lang/Object;I)I",
        "tryMakeCompletingSlowPath",
        "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)I",
        "tryWaitForChild",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "nextChild",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;",
        "notifyCompletion",
        "message",
        "toCancellationException",
        "(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;",
        "Lkotlin/sequences/Sequence;",
        "getChildren",
        "()Lkotlin/sequences/Sequence;",
        "children",
        "getCompletionCause",
        "completionCause",
        "getCompletionCauseHandled",
        "completionCauseHandled",
        "getHandlesException$kotlinx_coroutines_core",
        "handlesException",
        "isActive",
        "isCancelled",
        "isCompleted",
        "isCompletedExceptionally",
        "isScopedCoroutine",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "getKey",
        "()Lkotlin/coroutines/CoroutineContext$Key;",
        "key",
        "getOnCancelComplete$kotlinx_coroutines_core",
        "onCancelComplete",
        "getOnJoin",
        "()Lkotlinx/coroutines/selects/SelectClause0;",
        "onJoin",
        "parentHandle",
        "Lkotlinx/coroutines/ChildHandle;",
        "getState$kotlinx_coroutines_core",
        "getExceptionOrNull",
        "exceptionOrNull",
        "isCancelling",
        "(Lkotlinx/coroutines/Incomplete;)Z",
        "AwaitContinuation",
        "ChildCompletion",
        "Finishing",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _state:Ljava/lang/Object;

.field public volatile parentHandle:Lkotlinx/coroutines/ChildHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/JobSupport;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    if-eqz p1, :cond_0

    # getter for: Lkotlinx/coroutines/JobSupportKt;->EMPTY_ACTIVE:Lkotlinx/coroutines/Empty;
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getEMPTY_ACTIVE$p()Lkotlinx/coroutines/Empty;

    move-result-object v0

    goto :goto_0

    :cond_0
    # getter for: Lkotlinx/coroutines/JobSupportKt;->EMPTY_NEW:Lkotlinx/coroutines/Empty;
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getEMPTY_NEW$p()Lkotlinx/coroutines/Empty;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lkotlinx/coroutines/JobSupport;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$continueCompleting(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/JobSupport;
    .param p1, "state"    # Lkotlinx/coroutines/JobSupport$Finishing;
    .param p2, "lastChild"    # Lkotlinx/coroutines/ChildHandleNode;
    .param p3, "proposedUpdate"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport;->continueCompleting(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V

    return-void
.end method

.method private final addLastAtomic(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z
    .locals 7
    .param p1, "expect"    # Ljava/lang/Object;
    .param p2, "list"    # Lkotlinx/coroutines/NodeList;
    .param p3, "node"    # Lkotlinx/coroutines/JobNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/NodeList;",
            "Lkotlinx/coroutines/JobNode<",
            "*>;)Z"
        }
    .end annotation

    .line 508
    move-object v0, p2

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    const/4 v1, 0x0

    .line 1484
    .local v1, "$i$f$addLastIf":I
    move-object v2, v0

    .local v2, "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    const/4 v3, 0x0

    .line 1485
    .local v3, "$i$f$makeCondAddOp":I
    new-instance v4, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;

    move-object v5, p3

    check-cast v5, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-object v6, p3

    check-cast v6, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {v4, v5, v6, p0, p1}, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/JobSupport;Ljava/lang/Object;)V

    check-cast v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;

    .line 1487
    nop

    .line 1484
    .end local v2    # "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v3    # "$i$f$makeCondAddOp":I
    move-object v2, v4

    .line 1488
    .local v2, "condAdd$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_0
    nop

    .line 1489
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 1490
    .local v3, "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    move-object v4, p3

    check-cast v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {v3, v4, v0, v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 1488
    .end local v3    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    goto :goto_0

    .line 1492
    .restart local v3    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 1491
    :cond_1
    nop

    .line 508
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v1    # "$i$f$addLastIf":I
    .end local v2    # "condAdd$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
    .end local v3    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :goto_1
    return v5

    .line 1489
    .restart local v0    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .restart local v1    # "$i$f$addLastIf":I
    .restart local v2    # "condAdd$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
    :cond_2
    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final addSuppressedExceptions(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 7
    .param p1, "rootCause"    # Ljava/lang/Throwable;
    .param p2, "exceptions"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 252
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/ConcurrentKt;->identitySet(I)Ljava/util/Set;

    move-result-object v0

    .line 259
    .local v0, "seenExceptions":Ljava/util/Set;
    invoke-static {p1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 260
    .local v1, "unwrappedCause":Ljava/lang/Throwable;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 261
    .local v3, "exception":Ljava/lang/Throwable;
    invoke-static {v3}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    .line 262
    .local v4, "unwrapped":Ljava/lang/Throwable;
    nop

    .line 263
    if-eq v4, p1, :cond_1

    if-eq v4, v1, :cond_1

    instance-of v5, v4, Ljava/util/concurrent/CancellationException;

    if-nez v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    move-object v5, p1

    .local v5, "$this$addSuppressedThrowable$iv":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 1430
    .local v6, "$i$f$addSuppressedThrowable":I
    invoke-static {v5, v4}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 260
    .end local v3    # "exception":Ljava/lang/Throwable;
    .end local v4    # "unwrapped":Ljava/lang/Throwable;
    .end local v5    # "$this$addSuppressedThrowable$iv":Ljava/lang/Throwable;
    .end local v6    # "$i$f$addSuppressedThrowable":I
    :cond_1
    goto :goto_0

    .line 267
    :cond_2
    return-void
.end method

.method private final cancelMakeCompleting(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "cause"    # Ljava/lang/Object;

    .line 654
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1509
    .local v1, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1510
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 655
    .local v3, "$i$a$-loopOnState-JobSupport$cancelMakeCompleting$1":I
    instance-of v4, v2, Lkotlinx/coroutines/Incomplete;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    instance-of v4, v2, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/JobSupport$Finishing;

    iget-boolean v4, v4, Lkotlinx/coroutines/JobSupport$Finishing;->isCompleting:Z

    if-eqz v4, :cond_0

    goto :goto_1

    .line 658
    :cond_0
    new-instance v4, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->createCauseException(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-direct {v4, v6, v5, v8, v7}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 659
    .local v4, "proposedUpdate":Lkotlinx/coroutines/CompletedExceptionally;
    invoke-direct {p0, v2, v4, v5}, Lkotlinx/coroutines/JobSupport;->tryMakeCompleting(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    if-eq v6, v5, :cond_2

    if-eq v6, v8, :cond_2

    const/4 v5, 0x3

    if-ne v6, v5, :cond_1

    .line 662
    nop

    .line 1509
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loopOnState-JobSupport$cancelMakeCompleting$1":I
    .end local v4    # "proposedUpdate":Lkotlinx/coroutines/CompletedExceptionally;
    goto :goto_0

    .line 663
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loopOnState-JobSupport$cancelMakeCompleting$1":I
    .restart local v4    # "proposedUpdate":Lkotlinx/coroutines/CompletedExceptionally;
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "unexpected result"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 661
    :cond_2
    return v5

    .line 660
    :cond_3
    return v5

    .line 656
    .end local v4    # "proposedUpdate":Lkotlinx/coroutines/CompletedExceptionally;
    :cond_4
    :goto_1
    return v5
.end method

.method private final cancelParent(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 330
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->isScopedCoroutine()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 336
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 337
    .local v0, "isCancellation":Z
    iget-object v2, p0, Lkotlinx/coroutines/JobSupport;->parentHandle:Lkotlinx/coroutines/ChildHandle;

    .line 339
    .local v2, "parent":Lkotlinx/coroutines/ChildHandle;
    if-eqz v2, :cond_4

    sget-object v3, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 344
    :cond_1
    invoke-interface {v2, p1}, Lkotlinx/coroutines/ChildHandle;->childCancelled(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    .line 340
    :cond_4
    :goto_1
    return v0
.end method

.method private final completeStateFinalization(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)V
    .locals 5
    .param p1, "state"    # Lkotlinx/coroutines/Incomplete;
    .param p2, "update"    # Ljava/lang/Object;
    .param p3, "mode"    # I

    .line 288
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport;->parentHandle:Lkotlinx/coroutines/ChildHandle;

    if-eqz v0, :cond_0

    .local v0, "it":Lkotlinx/coroutines/ChildHandle;
    const/4 v1, 0x0

    .line 289
    .local v1, "$i$a$-let-JobSupport$completeStateFinalization$1":I
    invoke-interface {v0}, Lkotlinx/coroutines/ChildHandle;->dispose()V

    .line 290
    sget-object v2, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v2, Lkotlinx/coroutines/ChildHandle;

    iput-object v2, p0, Lkotlinx/coroutines/JobSupport;->parentHandle:Lkotlinx/coroutines/ChildHandle;

    .line 291
    .end local v0    # "it":Lkotlinx/coroutines/ChildHandle;
    .end local v1    # "$i$a$-let-JobSupport$completeStateFinalization$1":I
    nop

    .line 288
    nop

    .line 292
    :cond_0
    instance-of v0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    :cond_2
    move-object v0, v1

    .line 297
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, p1, Lkotlinx/coroutines/JobNode;

    if-eqz v1, :cond_3

    .line 298
    nop

    .line 299
    :try_start_0
    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/JobNode;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/JobNode;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 300
    :catchall_0
    move-exception v1

    .line 301
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in completion handler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/JobSupport;->handleOnCompletionException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    .line 302
    .end local v1    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 304
    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v1, v0}, Lkotlinx/coroutines/JobSupport;->notifyCompletion(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V

    .line 305
    :cond_4
    :goto_1
    nop

    .line 310
    invoke-virtual {p0, p2, p3}, Lkotlinx/coroutines/JobSupport;->afterCompletionInternal(Ljava/lang/Object;I)V

    .line 311
    return-void
.end method

.method private final continueCompleting(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lkotlinx/coroutines/JobSupport$Finishing;
    .param p2, "lastChild"    # Lkotlinx/coroutines/ChildHandleNode;
    .param p3, "proposedUpdate"    # Ljava/lang/Object;

    .line 875
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 877
    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->nextChild(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;

    move-result-object v0

    .line 879
    .local v0, "waitChild":Lkotlinx/coroutines/ChildHandleNode;
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0, p3}, Lkotlinx/coroutines/JobSupport;->tryWaitForChild(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 881
    :cond_1
    invoke-direct {p0, p1, p3, v1}, Lkotlinx/coroutines/JobSupport;->tryFinalizeFinishingState(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 882
    :cond_2
    return-void

    .line 875
    .end local v0    # "waitChild":Lkotlinx/coroutines/ChildHandleNode;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final createCauseException(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "cause"    # Ljava/lang/Object;

    .line 684
    nop

    .line 685
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport;->createJobCancellationException()Lkotlinx/coroutines/JobCancellationException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_1

    .line 686
    :cond_2
    if-eqz p1, :cond_3

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/ParentJob;

    invoke-interface {v0}, Lkotlinx/coroutines/ParentJob;->getChildJobCancellationCause()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 684
    :goto_1
    nop

    .line 687
    return-object v0

    .line 686
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final createJobCancellationException()Lkotlinx/coroutines/JobCancellationException;
    .locals 4

    .line 669
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/Job;

    const-string v2, "Job was cancelled"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    return-object v0
.end method

.method private final firstChild(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/ChildHandleNode;
    .locals 2
    .param p1, "state"    # Lkotlinx/coroutines/Incomplete;

    .line 859
    instance-of v0, p1, Lkotlinx/coroutines/ChildHandleNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->nextChild(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method private final getExceptionOrNull(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "$this$exceptionOrNull"    # Ljava/lang/Object;

    .line 856
    instance-of v0, p1, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method private final getFinalRootCause(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 8
    .param p1, "state"    # Lkotlinx/coroutines/JobSupport$Finishing;
    .param p2, "exceptions"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/JobSupport$Finishing;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 242
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport;->createJobCancellationException()Lkotlinx/coroutines/JobCancellationException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 245
    :cond_0
    return-object v1

    .line 248
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1428
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/Throwable;

    .local v5, "it":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 248
    .local v6, "$i$a$-firstOrNull-JobSupport$getFinalRootCause$1":I
    instance-of v7, v5, Ljava/util/concurrent/CancellationException;

    .end local v5    # "it":Ljava/lang/Throwable;
    .end local v6    # "$i$a$-firstOrNull-JobSupport$getFinalRootCause$1":I
    xor-int/lit8 v5, v7, 0x1

    if-eqz v5, :cond_2

    move-object v1, v4

    goto :goto_0

    .line 1429
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 248
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    :goto_1
    return-object v1
.end method

.method private final getOrPromoteCancellingList(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;
    .locals 2
    .param p1, "state"    # Lkotlinx/coroutines/Incomplete;

    .line 734
    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 735
    :cond_0
    nop

    .line 736
    instance-of v0, p1, Lkotlinx/coroutines/Empty;

    if-eqz v0, :cond_1

    new-instance v0, Lkotlinx/coroutines/NodeList;

    invoke-direct {v0}, Lkotlinx/coroutines/NodeList;-><init>()V

    goto :goto_0

    .line 737
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/JobNode;

    if-eqz v0, :cond_2

    .line 740
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/JobNode;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->promoteSingleToNodeList(Lkotlinx/coroutines/JobNode;)V

    .line 741
    const/4 v0, 0x0

    .line 735
    :goto_0
    nop

    .line 744
    return-object v0

    .line 743
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State should have list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private final isCancelling(Lkotlinx/coroutines/Incomplete;)Z
    .locals 1
    .param p1, "$this$isCancelling"    # Lkotlinx/coroutines/Incomplete;

    .line 1081
    instance-of v0, p1, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final joinInternal()Z
    .locals 5

    .line 535
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1493
    .local v1, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1494
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 536
    .local v3, "$i$a$-loopOnState-JobSupport$joinInternal$1":I
    instance-of v4, v2, Lkotlinx/coroutines/Incomplete;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    return v4

    .line 537
    :cond_0
    invoke-direct {p0, v2}, Lkotlinx/coroutines/JobSupport;->startInternal(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    return v4

    .line 538
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loopOnState-JobSupport$joinInternal$1":I
    :cond_1
    nop

    .line 1493
    goto :goto_0
.end method

.method private final loopOnState(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    .local v0, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 175
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    goto :goto_0
.end method

.method private final makeCancelling(Ljava/lang/Object;)Z
    .locals 16
    .param p1, "cause"    # Ljava/lang/Object;

    .line 692
    move-object/from16 v1, p0

    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    .line 693
    .local v2, "causeExceptionCache":Ljava/lang/Object;
    move-object/from16 v3, p0

    .local v3, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v4, 0x0

    .line 1511
    .local v4, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1512
    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v5

    .local v5, "state":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 694
    .local v6, "$i$a$-loopOnState-JobSupport$makeCancelling$1":I
    nop

    .line 695
    instance-of v7, v5, Lkotlinx/coroutines/JobSupport$Finishing;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_7

    .line 696
    const/4 v7, 0x0

    .line 1513
    .local v7, "$i$f$synchronized":I
    monitor-enter v5

    const/4 v10, 0x0

    .line 697
    .local v10, "$i$a$-synchronized-JobSupport$makeCancelling$1$notifyRootCause$1":I
    :try_start_0
    move-object v11, v5

    check-cast v11, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v11}, Lkotlinx/coroutines/JobSupport$Finishing;->isSealed()Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v11, :cond_0

    .end local v7    # "$i$f$synchronized":I
    .end local v10    # "$i$a$-synchronized-JobSupport$makeCancelling$1$notifyRootCause$1":I
    monitor-exit v5

    return v9

    .line 699
    .restart local v7    # "$i$f$synchronized":I
    .restart local v10    # "$i$a$-synchronized-JobSupport$makeCancelling$1$notifyRootCause$1":I
    :cond_0
    :try_start_1
    move-object v11, v5

    check-cast v11, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v11}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v11

    .line 701
    .local v11, "wasCancelling":Z
    if-nez p1, :cond_1

    if-nez v11, :cond_3

    .line 702
    :cond_1
    if-eqz v2, :cond_2

    move-object v12, v2

    goto :goto_1

    :cond_2
    invoke-direct/range {p0 .. p1}, Lkotlinx/coroutines/JobSupport;->createCauseException(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v13, v12

    .local v13, "it":Ljava/lang/Throwable;
    const/4 v14, 0x0

    .local v14, "$i$a$-also-JobSupport$makeCancelling$1$notifyRootCause$1$causeException$1":I
    move-object v2, v13

    move-object v15, v12

    move-object v12, v2

    move-object v2, v15

    .line 703
    .end local v13    # "it":Ljava/lang/Throwable;
    .end local v14    # "$i$a$-also-JobSupport$makeCancelling$1$notifyRootCause$1$causeException$1":I
    .local v2, "causeException":Ljava/lang/Throwable;
    .local v12, "causeExceptionCache":Ljava/lang/Object;
    :goto_1
    :try_start_2
    move-object v13, v5

    check-cast v13, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v13, v2}, Lkotlinx/coroutines/JobSupport$Finishing;->addExceptionLocked(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v12

    .line 706
    .end local v12    # "causeExceptionCache":Ljava/lang/Object;
    .local v2, "causeExceptionCache":Ljava/lang/Object;
    :cond_3
    :try_start_3
    move-object v12, v5

    check-cast v12, Lkotlinx/coroutines/JobSupport$Finishing;

    iget-object v12, v12, Lkotlinx/coroutines/JobSupport$Finishing;->rootCause:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v12

    .restart local v13    # "it":Ljava/lang/Throwable;
    const/4 v14, 0x0

    .local v14, "$i$a$-takeIf-JobSupport$makeCancelling$1$notifyRootCause$1$1":I
    if-nez v11, :cond_4

    const/4 v9, 0x1

    .end local v13    # "it":Ljava/lang/Throwable;
    .end local v14    # "$i$a$-takeIf-JobSupport$makeCancelling$1$notifyRootCause$1$1":I
    :cond_4
    if-eqz v9, :cond_5

    move-object v0, v12

    .end local v10    # "$i$a$-synchronized-JobSupport$makeCancelling$1$notifyRootCause$1":I
    .end local v11    # "wasCancelling":Z
    :cond_5
    monitor-exit v5

    .line 1513
    nop

    .line 696
    .end local v7    # "$i$f$synchronized":I
    nop

    .line 708
    .local v0, "notifyRootCause":Ljava/lang/Throwable;
    if-eqz v0, :cond_6

    move-object v7, v0

    .local v7, "it":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .local v9, "$i$a$-let-JobSupport$makeCancelling$1$1":I
    move-object v10, v5

    check-cast v10, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v10}, Lkotlinx/coroutines/JobSupport$Finishing;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v10

    invoke-direct {v1, v10, v7}, Lkotlinx/coroutines/JobSupport;->notifyCancelling(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V

    .line 709
    .end local v7    # "it":Ljava/lang/Throwable;
    .end local v9    # "$i$a$-let-JobSupport$makeCancelling$1$1":I
    :cond_6
    return v8

    .line 706
    .end local v0    # "notifyRootCause":Ljava/lang/Throwable;
    .end local v2    # "causeExceptionCache":Ljava/lang/Object;
    .local v7, "$i$f$synchronized":I
    .restart local v12    # "causeExceptionCache":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    move-object v2, v12

    goto :goto_2

    .end local v12    # "causeExceptionCache":Ljava/lang/Object;
    .restart local v2    # "causeExceptionCache":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    :goto_2
    monitor-exit v5

    throw v0

    .line 711
    .end local v7    # "$i$f$synchronized":I
    :cond_7
    instance-of v7, v5, Lkotlinx/coroutines/Incomplete;

    if-eqz v7, :cond_e

    .line 713
    if-eqz v2, :cond_8

    move-object v7, v2

    goto :goto_3

    :cond_8
    invoke-direct/range {p0 .. p1}, Lkotlinx/coroutines/JobSupport;->createCauseException(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    move-object v10, v7

    .local v10, "it":Ljava/lang/Throwable;
    const/4 v11, 0x0

    .local v11, "$i$a$-also-JobSupport$makeCancelling$1$causeException$1":I
    move-object v2, v10

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    .line 714
    .end local v10    # "it":Ljava/lang/Throwable;
    .end local v11    # "$i$a$-also-JobSupport$makeCancelling$1$causeException$1":I
    .local v2, "causeException":Ljava/lang/Throwable;
    .local v7, "causeExceptionCache":Ljava/lang/Object;
    :goto_3
    move-object v10, v5

    check-cast v10, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v10}, Lkotlinx/coroutines/Incomplete;->isActive()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 716
    move-object v9, v5

    check-cast v9, Lkotlinx/coroutines/Incomplete;

    invoke-direct {v1, v9, v2}, Lkotlinx/coroutines/JobSupport;->tryMakeCancelling(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z

    move-result v9

    if-eqz v9, :cond_a

    return v8

    .line 719
    :cond_9
    new-instance v10, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v11, 0x2

    invoke-direct {v10, v2, v9, v11, v0}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v5, v10, v9}, Lkotlinx/coroutines/JobSupport;->tryMakeCompleting(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v9

    if-eqz v9, :cond_d

    if-eq v9, v8, :cond_c

    if-eq v9, v11, :cond_c

    const/4 v8, 0x3

    if-ne v9, v8, :cond_b

    .line 722
    nop

    .line 729
    .end local v2    # "causeException":Ljava/lang/Throwable;
    .end local v5    # "state":Ljava/lang/Object;
    .end local v6    # "$i$a$-loopOnState-JobSupport$makeCancelling$1":I
    :cond_a
    nop

    .line 1511
    move-object v2, v7

    goto/16 :goto_0

    .line 723
    .restart local v2    # "causeException":Ljava/lang/Throwable;
    .restart local v5    # "state":Ljava/lang/Object;
    .restart local v6    # "$i$a$-loopOnState-JobSupport$makeCancelling$1":I
    :cond_b
    const-string v0, "unexpected result"

    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .line 721
    :cond_c
    return v8

    .line 720
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot happen in "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .line 727
    .end local v7    # "causeExceptionCache":Ljava/lang/Object;
    .local v2, "causeExceptionCache":Ljava/lang/Object;
    :cond_e
    return v9
.end method

.method private final makeNode(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;
    .locals 8
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onCancelling"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;Z)",
            "Lkotlinx/coroutines/JobNode<",
            "*>;"
        }
    .end annotation

    .line 499
    const-string v0, "Failed requirement."

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    .line 500
    instance-of v4, p1, Lkotlinx/coroutines/JobCancellingNode;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    check-cast v3, Lkotlinx/coroutines/JobCancellingNode;

    if-eqz v3, :cond_3

    move-object v4, v3

    .local v4, "it":Lkotlinx/coroutines/JobCancellingNode;
    const/4 v5, 0x0

    .local v5, "$i$a$-also-JobSupport$makeNode$1":I
    iget-object v6, v4, Lkotlinx/coroutines/JobCancellingNode;->job:Lkotlinx/coroutines/Job;

    move-object v7, p0

    check-cast v7, Lkotlinx/coroutines/JobSupport;

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .end local v4    # "it":Lkotlinx/coroutines/JobCancellingNode;
    .end local v5    # "$i$a$-also-JobSupport$makeNode$1":I
    if-eqz v3, :cond_3

    check-cast v3, Lkotlinx/coroutines/JobNode;

    goto :goto_4

    .restart local v4    # "it":Lkotlinx/coroutines/JobCancellingNode;
    .restart local v5    # "$i$a$-also-JobSupport$makeNode$1":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 501
    .end local v4    # "it":Lkotlinx/coroutines/JobCancellingNode;
    .end local v5    # "$i$a$-also-JobSupport$makeNode$1":I
    :cond_3
    new-instance v0, Lkotlinx/coroutines/InvokeOnCancelling;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/Job;

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/InvokeOnCancelling;-><init>(Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function1;)V

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/JobNode;

    goto :goto_4

    .line 503
    :cond_4
    instance-of v4, p1, Lkotlinx/coroutines/JobNode;

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, p1

    :goto_2
    check-cast v3, Lkotlinx/coroutines/JobNode;

    if-eqz v3, :cond_8

    move-object v4, v3

    .local v4, "it":Lkotlinx/coroutines/JobNode;
    const/4 v5, 0x0

    .local v5, "$i$a$-also-JobSupport$makeNode$2":I
    iget-object v6, v4, Lkotlinx/coroutines/JobNode;->job:Lkotlinx/coroutines/Job;

    move-object v7, p0

    check-cast v7, Lkotlinx/coroutines/JobSupport;

    if-ne v6, v7, :cond_6

    instance-of v6, v4, Lkotlinx/coroutines/JobCancellingNode;

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    .end local v4    # "it":Lkotlinx/coroutines/JobNode;
    .end local v5    # "$i$a$-also-JobSupport$makeNode$2":I
    if-eqz v3, :cond_8

    goto :goto_4

    .restart local v4    # "it":Lkotlinx/coroutines/JobNode;
    .restart local v5    # "$i$a$-also-JobSupport$makeNode$2":I
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 504
    .end local v4    # "it":Lkotlinx/coroutines/JobNode;
    .end local v5    # "$i$a$-also-JobSupport$makeNode$2":I
    :cond_8
    new-instance v0, Lkotlinx/coroutines/InvokeOnCompletion;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/Job;

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/InvokeOnCompletion;-><init>(Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function1;)V

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/JobNode;

    .line 499
    :goto_4
    return-object v3
.end method

.method private final nextChild(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;
    .locals 2
    .param p1, "$this$nextChild"    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 885
    move-object v0, p1

    .line 886
    .local v0, "cur":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    goto :goto_0

    .line 887
    :cond_0
    :goto_1
    nop

    .line 888
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    .line 889
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 890
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ChildHandleNode;

    return-object v1

    .line 891
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/NodeList;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    return-object v1

    .line 887
    :cond_3
    goto :goto_1
.end method

.method private final notifyCancelling(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V
    .locals 16
    .param p1, "list"    # Lkotlinx/coroutines/NodeList;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 315
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/JobSupport;->onCancelling(Ljava/lang/Throwable;)V

    .line 316
    move-object/from16 v3, p0

    .local v3, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v4, 0x0

    .line 1431
    .local v4, "$i$f$notifyHandlers":I
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    .line 1432
    .local v0, "exception$iv":Ljava/lang/Object;
    move-object/from16 v5, p1

    .local v5, "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    const/4 v6, 0x0

    .line 1433
    .local v6, "$i$f$forEach":I
    invoke-virtual {v5}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    check-cast v7, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-object v8, v7

    move-object v7, v0

    .line 1434
    .end local v0    # "exception$iv":Ljava/lang/Object;
    .local v7, "exception$iv":Ljava/lang/Object;
    .local v8, "cur$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :goto_0
    move-object v0, v5

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1435
    instance-of v0, v8, Lkotlinx/coroutines/JobCancellingNode;

    if-eqz v0, :cond_1

    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/JobNode;

    .local v9, "node$iv":Lkotlinx/coroutines/JobNode;
    const/4 v10, 0x0

    .line 1436
    .local v10, "$i$a$-forEach-JobSupport$notifyHandlers$1$iv":I
    nop

    .line 1437
    :try_start_0
    invoke-virtual {v9, v2}, Lkotlinx/coroutines/JobNode;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1438
    :catchall_0
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 1439
    .local v0, "ex$iv":Ljava/lang/Throwable;
    if-eqz v7, :cond_0

    move-object v11, v7

    .local v11, "$this$apply$iv":Ljava/lang/Throwable;
    const/4 v12, 0x0

    .local v12, "$i$a$-apply-JobSupport$notifyHandlers$1$1$iv":I
    move-object v13, v0

    .local v13, "other$iv$iv":Ljava/lang/Throwable;
    move-object v14, v11

    .local v14, "$this$addSuppressedThrowable$iv$iv":Ljava/lang/Throwable;
    const/4 v15, 0x0

    .line 1440
    .local v15, "$i$f$addSuppressedThrowable":I
    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 1439
    .end local v13    # "other$iv$iv":Ljava/lang/Throwable;
    .end local v14    # "$this$addSuppressedThrowable$iv$iv":Ljava/lang/Throwable;
    .end local v15    # "$i$f$addSuppressedThrowable":I
    nop

    .end local v11    # "$this$apply$iv":Ljava/lang/Throwable;
    .end local v12    # "$i$a$-apply-JobSupport$notifyHandlers$1$1$iv":I
    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move-object v11, v3

    check-cast v11, Lkotlinx/coroutines/JobSupport;

    .local v11, "$this$run$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v12, 0x0

    .line 1441
    .local v12, "$i$a$-run-JobSupport$notifyHandlers$1$2$iv":I
    new-instance v13, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in completion handler "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v0}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v13

    check-cast v7, Ljava/lang/Throwable;

    .line 1442
    .end local v11    # "$this$run$iv":Lkotlinx/coroutines/JobSupport;
    .end local v12    # "$i$a$-run-JobSupport$notifyHandlers$1$2$iv":I
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1439
    :goto_1
    nop

    .line 1443
    .end local v0    # "ex$iv":Ljava/lang/Throwable;
    :goto_2
    nop

    .line 1444
    nop

    .line 1445
    .end local v9    # "node$iv":Lkotlinx/coroutines/JobNode;
    .end local v10    # "$i$a$-forEach-JobSupport$notifyHandlers$1$iv":I
    :cond_1
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v8

    .line 1434
    goto :goto_0

    .line 1447
    :cond_2
    nop

    .line 1448
    .end local v5    # "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .end local v6    # "$i$f$forEach":I
    .end local v8    # "cur$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    if-eqz v7, :cond_3

    move-object v0, v7

    .local v0, "it$iv":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .local v5, "$i$a$-let-JobSupport$notifyHandlers$2$iv":I
    invoke-virtual {v3, v0}, Lkotlinx/coroutines/JobSupport;->handleOnCompletionException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    .line 1449
    .end local v0    # "it$iv":Ljava/lang/Throwable;
    .end local v5    # "$i$a$-let-JobSupport$notifyHandlers$2$iv":I
    :cond_3
    nop

    .line 318
    .end local v3    # "this_$iv":Lkotlinx/coroutines/JobSupport;
    .end local v4    # "$i$f$notifyHandlers":I
    .end local v7    # "exception$iv":Ljava/lang/Object;
    invoke-direct {v1, v2}, Lkotlinx/coroutines/JobSupport;->cancelParent(Ljava/lang/Throwable;)Z

    .line 319
    return-void

    .line 1433
    .local v0, "exception$iv":Ljava/lang/Object;
    .restart local v3    # "this_$iv":Lkotlinx/coroutines/JobSupport;
    .restart local v4    # "$i$f$notifyHandlers":I
    .local v5, "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .restart local v6    # "$i$f$forEach":I
    :cond_4
    new-instance v7, Lkotlin/TypeCastException;

    const-string v8, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v7, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private final notifyCompletion(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V
    .locals 15
    .param p1, "$this$notifyCompletion"    # Lkotlinx/coroutines/NodeList;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 348
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v2, 0x0

    .line 1450
    .local v2, "$i$f$notifyHandlers":I
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    .line 1451
    .local v0, "exception$iv":Ljava/lang/Object;
    move-object/from16 v3, p1

    .local v3, "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    const/4 v4, 0x0

    .line 1452
    .local v4, "$i$f$forEach":I
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    check-cast v5, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-object v6, v5

    move-object v5, v0

    .line 1453
    .end local v0    # "exception$iv":Ljava/lang/Object;
    .local v5, "exception$iv":Ljava/lang/Object;
    .local v6, "cur$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :goto_0
    move-object v0, v3

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1454
    instance-of v0, v6, Lkotlinx/coroutines/JobNode;

    if-eqz v0, :cond_1

    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/JobNode;

    .local v7, "node$iv":Lkotlinx/coroutines/JobNode;
    const/4 v8, 0x0

    .line 1455
    .local v8, "$i$a$-forEach-JobSupport$notifyHandlers$1$iv":I
    nop

    .line 1456
    move-object/from16 v9, p2

    :try_start_0
    invoke-virtual {v7, v9}, Lkotlinx/coroutines/JobNode;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1457
    :catchall_0
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 1458
    .local v0, "ex$iv":Ljava/lang/Throwable;
    if-eqz v5, :cond_0

    move-object v10, v5

    .local v10, "$this$apply$iv":Ljava/lang/Throwable;
    const/4 v11, 0x0

    .local v11, "$i$a$-apply-JobSupport$notifyHandlers$1$1$iv":I
    move-object v12, v0

    .local v12, "other$iv$iv":Ljava/lang/Throwable;
    move-object v13, v10

    .local v13, "$this$addSuppressedThrowable$iv$iv":Ljava/lang/Throwable;
    const/4 v14, 0x0

    .line 1459
    .local v14, "$i$f$addSuppressedThrowable":I
    invoke-static {v13, v12}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 1458
    .end local v12    # "other$iv$iv":Ljava/lang/Throwable;
    .end local v13    # "$this$addSuppressedThrowable$iv$iv":Ljava/lang/Throwable;
    .end local v14    # "$i$f$addSuppressedThrowable":I
    nop

    .end local v10    # "$this$apply$iv":Ljava/lang/Throwable;
    .end local v11    # "$i$a$-apply-JobSupport$notifyHandlers$1$1$iv":I
    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v10, v1

    check-cast v10, Lkotlinx/coroutines/JobSupport;

    .local v10, "$this$run$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v11, 0x0

    .line 1460
    .local v11, "$i$a$-run-JobSupport$notifyHandlers$1$2$iv":I
    new-instance v12, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception in completion handler "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v0}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v12

    check-cast v5, Ljava/lang/Throwable;

    .line 1461
    .end local v10    # "$this$run$iv":Lkotlinx/coroutines/JobSupport;
    .end local v11    # "$i$a$-run-JobSupport$notifyHandlers$1$2$iv":I
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1458
    :goto_1
    nop

    .line 1462
    .end local v0    # "ex$iv":Ljava/lang/Throwable;
    :goto_2
    nop

    .line 1463
    nop

    .end local v7    # "node$iv":Lkotlinx/coroutines/JobNode;
    .end local v8    # "$i$a$-forEach-JobSupport$notifyHandlers$1$iv":I
    goto :goto_3

    .line 1454
    :cond_1
    move-object/from16 v9, p2

    .line 1464
    :goto_3
    invoke-virtual {v6}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v6

    .line 1453
    goto :goto_0

    .line 1466
    :cond_2
    move-object/from16 v9, p2

    .line 1467
    .end local v3    # "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .end local v4    # "$i$f$forEach":I
    .end local v6    # "cur$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    if-eqz v5, :cond_3

    move-object v0, v5

    .local v0, "it$iv":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .local v3, "$i$a$-let-JobSupport$notifyHandlers$2$iv":I
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/JobSupport;->handleOnCompletionException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    .line 1468
    .end local v0    # "it$iv":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-JobSupport$notifyHandlers$2$iv":I
    :cond_3
    nop

    .line 348
    .end local v1    # "this_$iv":Lkotlinx/coroutines/JobSupport;
    .end local v2    # "$i$f$notifyHandlers":I
    .end local v5    # "exception$iv":Ljava/lang/Object;
    return-void

    .line 1452
    .local v0, "exception$iv":Ljava/lang/Object;
    .restart local v1    # "this_$iv":Lkotlinx/coroutines/JobSupport;
    .restart local v2    # "$i$f$notifyHandlers":I
    .local v3, "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .restart local v4    # "$i$f$forEach":I
    :cond_4
    move-object/from16 v9, p2

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private final synthetic notifyHandlers(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V
    .locals 13
    .param p1, "list"    # Lkotlinx/coroutines/NodeList;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lkotlinx/coroutines/JobNode<",
            "*>;>(",
            "Lkotlinx/coroutines/NodeList;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 351
    .local v0, "$i$f$notifyHandlers":I
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    .line 352
    .local v1, "exception":Ljava/lang/Object;
    move-object v2, p1

    .local v2, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    const/4 v3, 0x0

    .line 1469
    .local v3, "$i$f$forEach":I
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    check-cast v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 1470
    .local v4, "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :goto_0
    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 1471
    const/4 v5, 0x3

    const-string v6, "T"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v5, v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/JobNode;

    .local v5, "node":Lkotlinx/coroutines/JobNode;
    const/4 v6, 0x0

    .line 353
    .local v6, "$i$a$-forEach-JobSupport$notifyHandlers$1":I
    nop

    .line 354
    :try_start_0
    invoke-virtual {v5, p2}, Lkotlinx/coroutines/JobNode;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 355
    :catchall_0
    move-exception v7

    .line 356
    .local v7, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    move-object v8, v1

    .local v8, "$this$apply":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .local v9, "$i$a$-apply-JobSupport$notifyHandlers$1$1":I
    move-object v10, v7

    .local v10, "other$iv":Ljava/lang/Throwable;
    move-object v11, v8

    .local v11, "$this$addSuppressedThrowable$iv":Ljava/lang/Throwable;
    const/4 v12, 0x0

    .line 1472
    .local v12, "$i$f$addSuppressedThrowable":I
    invoke-static {v11, v10}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 356
    .end local v10    # "other$iv":Ljava/lang/Throwable;
    .end local v11    # "$this$addSuppressedThrowable$iv":Ljava/lang/Throwable;
    .end local v12    # "$i$f$addSuppressedThrowable":I
    nop

    .end local v8    # "$this$apply":Ljava/lang/Throwable;
    .end local v9    # "$i$a$-apply-JobSupport$notifyHandlers$1$1":I
    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v8, p0

    check-cast v8, Lkotlinx/coroutines/JobSupport;

    .local v8, "$this$run":Lkotlinx/coroutines/JobSupport;
    const/4 v9, 0x0

    .line 357
    .local v9, "$i$a$-run-JobSupport$notifyHandlers$1$2":I
    new-instance v10, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in completion handler "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v7}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v10

    check-cast v1, Ljava/lang/Throwable;

    .line 358
    .end local v8    # "$this$run":Lkotlinx/coroutines/JobSupport;
    .end local v9    # "$i$a$-run-JobSupport$notifyHandlers$1$2":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 356
    :goto_1
    nop

    .line 359
    .end local v7    # "ex":Ljava/lang/Throwable;
    :goto_2
    nop

    .line 360
    nop

    .line 1473
    .end local v5    # "node":Lkotlinx/coroutines/JobNode;
    .end local v6    # "$i$a$-forEach-JobSupport$notifyHandlers$1":I
    :cond_1
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v4

    .line 1470
    goto :goto_0

    .line 1475
    :cond_2
    nop

    .line 361
    .end local v2    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    if-eqz v1, :cond_3

    move-object v2, v1

    .local v2, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .local v3, "$i$a$-let-JobSupport$notifyHandlers$2":I
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/JobSupport;->handleOnCompletionException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    .line 362
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-JobSupport$notifyHandlers$2":I
    :cond_3
    return-void

    .line 1469
    .local v2, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .local v3, "$i$f$forEach":I
    :cond_4
    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private final promoteEmptyToNodeList(Lkotlinx/coroutines/Empty;)V
    .locals 3
    .param p1, "state"    # Lkotlinx/coroutines/Empty;

    .line 512
    new-instance v0, Lkotlinx/coroutines/NodeList;

    invoke-direct {v0}, Lkotlinx/coroutines/NodeList;-><init>()V

    .line 513
    .local v0, "list":Lkotlinx/coroutines/NodeList;
    invoke-virtual {p1}, Lkotlinx/coroutines/Empty;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Incomplete;

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/InactiveNodeList;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/InactiveNodeList;-><init>(Lkotlinx/coroutines/NodeList;)V

    check-cast v1, Lkotlinx/coroutines/Incomplete;

    .line 514
    .local v1, "update":Lkotlinx/coroutines/Incomplete;
    :goto_0
    sget-object v2, Lkotlinx/coroutines/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 515
    return-void
.end method

.method private final promoteSingleToNodeList(Lkotlinx/coroutines/JobNode;)V
    .locals 2
    .param p1, "state"    # Lkotlinx/coroutines/JobNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/JobNode<",
            "*>;)V"
        }
    .end annotation

    .line 519
    new-instance v0, Lkotlinx/coroutines/NodeList;

    invoke-direct {v0}, Lkotlinx/coroutines/NodeList;-><init>()V

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobNode;->addOneIfEmpty(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    .line 521
    invoke-virtual {p1}, Lkotlinx/coroutines/JobNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    .line 523
    .local v0, "list":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    sget-object v1, Lkotlinx/coroutines/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 524
    return-void
.end method

.method private final startInternal(Ljava/lang/Object;)I
    .locals 4
    .param p1, "state"    # Ljava/lang/Object;

    .line 378
    nop

    .line 379
    instance-of v0, p1, Lkotlinx/coroutines/Empty;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 380
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/Empty;

    invoke-virtual {v0}, Lkotlinx/coroutines/Empty;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 381
    :cond_0
    sget-object v0, Lkotlinx/coroutines/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    # getter for: Lkotlinx/coroutines/JobSupportKt;->EMPTY_ACTIVE:Lkotlinx/coroutines/Empty;
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getEMPTY_ACTIVE$p()Lkotlinx/coroutines/Empty;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 382
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->onStartInternal$kotlinx_coroutines_core()V

    .line 383
    return v2

    .line 385
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/InactiveNodeList;

    if-eqz v0, :cond_4

    .line 386
    sget-object v0, Lkotlinx/coroutines/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/InactiveNodeList;

    invoke-virtual {v3}, Lkotlinx/coroutines/InactiveNodeList;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 387
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->onStartInternal$kotlinx_coroutines_core()V

    .line 388
    return v2

    .line 390
    :cond_4
    return v3
.end method

.method private final stateString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Ljava/lang/Object;

    .line 1006
    nop

    .line 1007
    instance-of v0, p1, Lkotlinx/coroutines/JobSupport$Finishing;

    const-string v1, "Active"

    if-eqz v0, :cond_2

    .line 1008
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    .line 1009
    :cond_0
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/JobSupport$Finishing;

    iget-boolean v0, v0, Lkotlinx/coroutines/JobSupport$Finishing;->isCompleting:Z

    if-eqz v0, :cond_1

    const-string v1, "Completing"

    goto :goto_0

    .line 1010
    :cond_1
    nop

    .line 1007
    goto :goto_0

    .line 1012
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/Incomplete;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v0}, Lkotlinx/coroutines/Incomplete;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "New"

    goto :goto_0

    .line 1013
    :cond_4
    instance-of v0, p1, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_5

    const-string v1, "Cancelled"

    goto :goto_0

    .line 1014
    :cond_5
    const-string v1, "Completed"

    .line 1006
    :goto_0
    nop

    .line 1015
    return-object v1
.end method

.method public static synthetic toCancellationException$default(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 409
    const/4 p2, 0x0

    check-cast p2, Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->toCancellationException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final tryFinalizeFinishingState(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;I)Z
    .locals 9
    .param p1, "state"    # Lkotlinx/coroutines/JobSupport$Finishing;
    .param p2, "proposedUpdate"    # Ljava/lang/Object;
    .param p3, "mode"    # I

    .line 202
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_e

    .line 203
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$Finishing;->isSealed()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_d

    .line 204
    iget-boolean v0, p1, Lkotlinx/coroutines/JobSupport$Finishing;->isCompleting:Z

    if-eqz v0, :cond_c

    .line 205
    instance-of v0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 207
    .local v0, "proposedException":Ljava/lang/Throwable;
    :goto_2
    const/4 v4, 0x0

    .line 208
    .local v4, "wasCancelling":Z
    const/4 v5, 0x0

    .line 1427
    .local v5, "$i$f$synchronized":I
    monitor-enter p1

    const/4 v6, 0x0

    .line 209
    .local v6, "$i$a$-synchronized-JobSupport$tryFinalizeFinishingState$finalException$1":I
    :try_start_0
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v7

    move v4, v7

    .line 210
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport$Finishing;->sealLocked(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v7

    .line 211
    .local v7, "exceptions":Ljava/util/List;
    invoke-direct {p0, p1, v7}, Lkotlinx/coroutines/JobSupport;->getFinalRootCause(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v8

    .line 212
    .local v8, "finalCause":Ljava/lang/Throwable;
    if-eqz v8, :cond_3

    invoke-direct {p0, v8, v7}, Lkotlinx/coroutines/JobSupport;->addSuppressedExceptions(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_3
    nop

    .end local v6    # "$i$a$-synchronized-JobSupport$tryFinalizeFinishingState$finalException$1":I
    .end local v7    # "exceptions":Ljava/util/List;
    .end local v8    # "finalCause":Ljava/lang/Throwable;
    monitor-exit p1

    .line 1427
    nop

    .line 208
    .end local v5    # "$i$f$synchronized":I
    move-object v5, v8

    .line 216
    .local v5, "finalException":Ljava/lang/Throwable;
    nop

    .line 218
    if-nez v5, :cond_4

    goto :goto_3

    .line 220
    :cond_4
    if-ne v5, v0, :cond_5

    .line 216
    :goto_3
    move-object v6, p2

    goto :goto_4

    .line 222
    :cond_5
    new-instance v6, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v7, 0x2

    invoke-direct {v6, v5, v1, v7, v3}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 216
    :goto_4
    move-object v3, v6

    .line 225
    .local v3, "finalState":Ljava/lang/Object;
    if-eqz v5, :cond_9

    .line 226
    invoke-direct {p0, v5}, Lkotlinx/coroutines/JobSupport;->cancelParent(Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0, v5}, Lkotlinx/coroutines/JobSupport;->handleJobException(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 227
    .local v1, "handled":Z
    :cond_7
    if-eqz v1, :cond_9

    if-eqz v3, :cond_8

    move-object v6, v3

    check-cast v6, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-virtual {v6}, Lkotlinx/coroutines/CompletedExceptionally;->makeHandled()Z

    goto :goto_5

    :cond_8
    new-instance v2, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-direct {v2, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    .end local v1    # "handled":Z
    :cond_9
    :goto_5
    if-nez v4, :cond_a

    invoke-virtual {p0, v5}, Lkotlinx/coroutines/JobSupport;->onCancelling(Ljava/lang/Throwable;)V

    .line 232
    :cond_a
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/JobSupport;->onCompletionInternal(Ljava/lang/Object;)V

    .line 234
    sget-object v1, Lkotlinx/coroutines/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3}, Lkotlinx/coroutines/JobSupportKt;->boxIncomplete(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, p0, p1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 236
    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/Incomplete;

    invoke-direct {p0, v1, v3, p3}, Lkotlinx/coroutines/JobSupport;->completeStateFinalization(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)V

    .line 237
    return v2

    .line 234
    :cond_b
    const/4 v1, 0x0

    .local v1, "$i$a$-require-JobSupport$tryFinalizeFinishingState$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected state: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lkotlinx/coroutines/JobSupport;->_state:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", expected: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", update: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-JobSupport$tryFinalizeFinishingState$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 213
    .end local v3    # "finalState":Ljava/lang/Object;
    .local v5, "$i$f$synchronized":I
    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1

    .line 204
    .end local v0    # "proposedException":Ljava/lang/Throwable;
    .end local v4    # "wasCancelling":Z
    .end local v5    # "$i$f$synchronized":I
    :cond_c
    const-string v0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 203
    :cond_d
    const-string v0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 202
    :cond_e
    const-string v0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private final tryFinalizeSimpleState(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "state"    # Lkotlinx/coroutines/Incomplete;
    .param p2, "update"    # Ljava/lang/Object;
    .param p3, "mode"    # I

    .line 271
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .local v0, "$i$a$-assert-JobSupport$tryFinalizeSimpleState$1":I
    instance-of v3, p1, Lkotlinx/coroutines/Empty;

    if-nez v3, :cond_1

    instance-of v3, p1, Lkotlinx/coroutines/JobNode;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .end local v0    # "$i$a$-assert-JobSupport$tryFinalizeSimpleState$1":I
    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 272
    :cond_3
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .local v0, "$i$a$-assert-JobSupport$tryFinalizeSimpleState$2":I
    instance-of v3, p2, Lkotlinx/coroutines/CompletedExceptionally;

    .end local v0    # "$i$a$-assert-JobSupport$tryFinalizeSimpleState$2":I
    xor-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 273
    :cond_5
    :goto_3
    sget-object v0, Lkotlinx/coroutines/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lkotlinx/coroutines/JobSupportKt;->boxIncomplete(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 274
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->onCancelling(Ljava/lang/Throwable;)V

    .line 275
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/JobSupport;->onCompletionInternal(Ljava/lang/Object;)V

    .line 276
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport;->completeStateFinalization(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)V

    .line 277
    return v2
.end method

.method private final tryMakeCancelling(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z
    .locals 5
    .param p1, "state"    # Lkotlinx/coroutines/Incomplete;
    .param p2, "rootCause"    # Ljava/lang/Throwable;

    .line 748
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-assert-JobSupport$tryMakeCancelling$1":I
    instance-of v2, p1, Lkotlinx/coroutines/JobSupport$Finishing;

    .end local v0    # "$i$a$-assert-JobSupport$tryMakeCancelling$1":I
    xor-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 749
    :cond_1
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .local v0, "$i$a$-assert-JobSupport$tryMakeCancelling$2":I
    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->isActive()Z

    move-result v0

    .end local v0    # "$i$a$-assert-JobSupport$tryMakeCancelling$2":I
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 751
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->getOrPromoteCancellingList(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 753
    .local v0, "list":Lkotlinx/coroutines/NodeList;
    new-instance v3, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-direct {v3, v0, v2, p2}, Lkotlinx/coroutines/JobSupport$Finishing;-><init>(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V

    .line 754
    .local v3, "cancelling":Lkotlinx/coroutines/JobSupport$Finishing;
    sget-object v4, Lkotlinx/coroutines/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    .line 756
    :cond_4
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/JobSupport;->notifyCancelling(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V

    .line 757
    return v1

    .line 751
    .end local v0    # "list":Lkotlinx/coroutines/NodeList;
    .end local v3    # "cancelling":Lkotlinx/coroutines/JobSupport$Finishing;
    :cond_5
    return v2
.end method

.method private final tryMakeCompleting(Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;
    .param p2, "proposedUpdate"    # Ljava/lang/Object;
    .param p3, "mode"    # I

    .line 798
    instance-of v0, p1, Lkotlinx/coroutines/Incomplete;

    if-nez v0, :cond_0

    .line 799
    const/4 v0, 0x0

    return v0

    .line 806
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/Empty;

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/JobNode;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/ChildHandleNode;

    if-nez v0, :cond_3

    instance-of v0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v0, :cond_3

    .line 807
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/Incomplete;

    invoke-direct {p0, v0, p2, p3}, Lkotlinx/coroutines/JobSupport;->tryFinalizeSimpleState(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    .line 808
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 811
    :cond_3
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/Incomplete;

    invoke-direct {p0, v0, p2, p3}, Lkotlinx/coroutines/JobSupport;->tryMakeCompletingSlowPath(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method private final tryMakeCompletingSlowPath(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)I
    .locals 16
    .param p1, "state"    # Lkotlinx/coroutines/Incomplete;
    .param p2, "proposedUpdate"    # Ljava/lang/Object;
    .param p3, "mode"    # I

    .line 816
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p1}, Lkotlinx/coroutines/JobSupport;->getOrPromoteCancellingList(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;

    move-result-object v0

    const/4 v4, 0x3

    if-eqz v0, :cond_c

    move-object v5, v0

    .line 820
    .local v5, "list":Lkotlinx/coroutines/NodeList;
    instance-of v0, v2, Lkotlinx/coroutines/JobSupport$Finishing;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    move-object v0, v6

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    check-cast v0, Lkotlinx/coroutines/JobSupport$Finishing;

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-direct {v0, v5, v7, v6}, Lkotlinx/coroutines/JobSupport$Finishing;-><init>(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V

    :goto_1
    move-object v8, v0

    .line 822
    .local v8, "finishing":Lkotlinx/coroutines/JobSupport$Finishing;
    move-object v9, v6

    check-cast v9, Ljava/lang/Throwable;

    .line 823
    .local v9, "notifyRootCause":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1518
    .local v10, "$i$f$synchronized":I
    monitor-enter v8

    const/4 v0, 0x0

    .line 825
    .local v0, "$i$a$-synchronized-JobSupport$tryMakeCompletingSlowPath$1":I
    :try_start_0
    iget-boolean v11, v8, Lkotlinx/coroutines/JobSupport$Finishing;->isCompleting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v11, :cond_2

    .end local v0    # "$i$a$-synchronized-JobSupport$tryMakeCompletingSlowPath$1":I
    .end local v10    # "$i$f$synchronized":I
    monitor-exit v8

    return v7

    .line 827
    .restart local v0    # "$i$a$-synchronized-JobSupport$tryMakeCompletingSlowPath$1":I
    .restart local v10    # "$i$f$synchronized":I
    :cond_2
    const/4 v11, 0x1

    :try_start_1
    iput-boolean v11, v8, Lkotlinx/coroutines/JobSupport$Finishing;->isCompleting:Z

    .line 831
    if-eq v8, v2, :cond_3

    .line 832
    sget-object v12, Lkotlinx/coroutines/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v12, v1, v2, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v12, :cond_3

    .end local v0    # "$i$a$-synchronized-JobSupport$tryMakeCompletingSlowPath$1":I
    .end local v10    # "$i$f$synchronized":I
    monitor-exit v8

    return v4

    .line 835
    .restart local v0    # "$i$a$-synchronized-JobSupport$tryMakeCompletingSlowPath$1":I
    .restart local v10    # "$i$f$synchronized":I
    :cond_3
    :try_start_2
    invoke-virtual {v8}, Lkotlinx/coroutines/JobSupport$Finishing;->isSealed()Z

    move-result v12

    xor-int/2addr v12, v11

    if-eqz v12, :cond_b

    .line 837
    invoke-virtual {v8}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v12

    .line 838
    .local v12, "wasCancelling":Z
    instance-of v13, v3, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v13, :cond_4

    move-object v13, v6

    goto :goto_2

    :cond_4
    move-object v13, v3

    :goto_2
    check-cast v13, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v13, :cond_5

    .local v13, "it":Lkotlinx/coroutines/CompletedExceptionally;
    const/4 v14, 0x0

    .local v14, "$i$a$-let-JobSupport$tryMakeCompletingSlowPath$1$1":I
    iget-object v15, v13, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    invoke-virtual {v8, v15}, Lkotlinx/coroutines/JobSupport$Finishing;->addExceptionLocked(Ljava/lang/Throwable;)V

    .line 840
    .end local v13    # "it":Lkotlinx/coroutines/CompletedExceptionally;
    .end local v14    # "$i$a$-let-JobSupport$tryMakeCompletingSlowPath$1$1":I
    :cond_5
    iget-object v13, v8, Lkotlinx/coroutines/JobSupport$Finishing;->rootCause:Ljava/lang/Throwable;

    move-object v14, v13

    .local v14, "it":Ljava/lang/Throwable;
    const/4 v15, 0x0

    .local v15, "$i$a$-takeIf-JobSupport$tryMakeCompletingSlowPath$1$2":I
    if-nez v12, :cond_6

    const/4 v7, 0x1

    .end local v14    # "it":Ljava/lang/Throwable;
    .end local v15    # "$i$a$-takeIf-JobSupport$tryMakeCompletingSlowPath$1$2":I
    :cond_6
    if-eqz v7, :cond_7

    move-object v6, v13

    :cond_7
    move-object v9, v6

    .line 841
    .end local v12    # "wasCancelling":Z
    nop

    .end local v0    # "$i$a$-synchronized-JobSupport$tryMakeCompletingSlowPath$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    .line 1518
    .end local v10    # "$i$f$synchronized":I
    nop

    .line 843
    if-eqz v9, :cond_8

    move-object v0, v9

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .local v6, "$i$a$-let-JobSupport$tryMakeCompletingSlowPath$2":I
    invoke-direct {v1, v5, v0}, Lkotlinx/coroutines/JobSupport;->notifyCancelling(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V

    .line 845
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v6    # "$i$a$-let-JobSupport$tryMakeCompletingSlowPath$2":I
    :cond_8
    invoke-direct/range {p0 .. p1}, Lkotlinx/coroutines/JobSupport;->firstChild(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/ChildHandleNode;

    move-result-object v0

    .line 846
    .local v0, "child":Lkotlinx/coroutines/ChildHandleNode;
    if-eqz v0, :cond_9

    invoke-direct {v1, v8, v0, v3}, Lkotlinx/coroutines/JobSupport;->tryWaitForChild(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 847
    const/4 v4, 0x2

    return v4

    .line 849
    :cond_9
    move/from16 v6, p3

    invoke-direct {v1, v8, v3, v6}, Lkotlinx/coroutines/JobSupport;->tryFinalizeFinishingState(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 850
    return v11

    .line 852
    :cond_a
    return v4

    .line 835
    .local v0, "$i$a$-synchronized-JobSupport$tryMakeCompletingSlowPath$1":I
    .restart local v10    # "$i$f$synchronized":I
    :cond_b
    move/from16 v6, p3

    :try_start_3
    const-string v4, "Failed requirement."

    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    .end local v5    # "list":Lkotlinx/coroutines/NodeList;
    .end local v8    # "finishing":Lkotlinx/coroutines/JobSupport$Finishing;
    .end local v9    # "notifyRootCause":Ljava/lang/Object;
    .end local v10    # "$i$f$synchronized":I
    .end local p1    # "state":Lkotlinx/coroutines/Incomplete;
    .end local p2    # "proposedUpdate":Ljava/lang/Object;
    .end local p3    # "mode":I
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 841
    .end local v0    # "$i$a$-synchronized-JobSupport$tryMakeCompletingSlowPath$1":I
    .restart local v5    # "list":Lkotlinx/coroutines/NodeList;
    .restart local v8    # "finishing":Lkotlinx/coroutines/JobSupport$Finishing;
    .restart local v9    # "notifyRootCause":Ljava/lang/Object;
    .restart local v10    # "$i$f$synchronized":I
    .restart local p1    # "state":Lkotlinx/coroutines/Incomplete;
    .restart local p2    # "proposedUpdate":Ljava/lang/Object;
    .restart local p3    # "mode":I
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v6, p3

    :goto_3
    monitor-exit v8

    throw v0

    .line 816
    .end local v5    # "list":Lkotlinx/coroutines/NodeList;
    .end local v8    # "finishing":Lkotlinx/coroutines/JobSupport$Finishing;
    .end local v9    # "notifyRootCause":Ljava/lang/Object;
    .end local v10    # "$i$f$synchronized":I
    :cond_c
    move/from16 v6, p3

    return v4
.end method

.method private final tryWaitForChild(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "state"    # Lkotlinx/coroutines/JobSupport$Finishing;
    .param p2, "child"    # Lkotlinx/coroutines/ChildHandleNode;
    .param p3, "proposedUpdate"    # Ljava/lang/Object;

    .line 864
    :goto_0
    iget-object v0, p2, Lkotlinx/coroutines/ChildHandleNode;->childJob:Lkotlinx/coroutines/ChildJob;

    const/4 v1, 0x0

    .line 865
    const/4 v2, 0x0

    .line 866
    new-instance v3, Lkotlinx/coroutines/JobSupport$ChildCompletion;

    invoke-direct {v3, p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport$ChildCompletion;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V

    check-cast v3, Lkotlinx/coroutines/CompletionHandlerBase;

    .local v3, "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    const/4 v4, 0x0

    .line 1519
    .local v4, "$i$f$getAsHandler":I
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .end local v3    # "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    .end local v4    # "$i$f$getAsHandler":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 864
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    .line 868
    .local v0, "handle":Lkotlinx/coroutines/DisposableHandle;
    sget-object v1, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 869
    :cond_0
    move-object v1, p2

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {p0, v1}, Lkotlinx/coroutines/JobSupport;->nextChild(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 870
    .local v1, "nextChild":Lkotlinx/coroutines/ChildHandleNode;
    move-object p2, v1

    goto :goto_0

    .line 869
    .end local v1    # "nextChild":Lkotlinx/coroutines/ChildHandleNode;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected afterCompletionInternal(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "state"    # Ljava/lang/Object;
    .param p2, "mode"    # I

    .line 992
    return-void
.end method

.method public final attachChild(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;
    .locals 8
    .param p1, "child"    # Lkotlinx/coroutines/ChildJob;

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 915
    new-instance v0, Lkotlinx/coroutines/ChildHandleNode;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/ChildHandleNode;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/ChildJob;)V

    check-cast v0, Lkotlinx/coroutines/CompletionHandlerBase;

    .local v0, "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    const/4 v1, 0x0

    .line 1520
    .local v1, "$i$f$getAsHandler":I
    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 915
    .end local v0    # "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    .end local v1    # "$i$f$getAsHandler":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lkotlinx/coroutines/ChildHandle;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final awaitInternal$kotlinx_coroutines_core(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1147
    :goto_0
    nop

    .line 1148
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 1149
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_3

    .line 1151
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_2

    .line 1152
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .local v1, "exception$iv":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1521
    .local v2, "$i$f$recoverAndThrow":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1522
    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v3, p1

    .local v3, "it$iv":Lkotlin/coroutines/Continuation;
    const/4 v4, 0x0

    .line 1523
    .local v4, "$i$a$-suspendCoroutineUninterceptedOrReturn-StackTraceRecoveryKt$recoverAndThrow$2$iv":I
    instance-of v5, v3, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v5, :cond_0

    throw v1

    .line 1524
    :cond_0
    move-object v5, v3

    check-cast v5, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    # invokes: Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;
    invoke-static {v1, v5}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v5

    throw v5

    .line 1521
    .end local v3    # "it$iv":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-StackTraceRecoveryKt$recoverAndThrow$2$iv":I
    :cond_1
    throw v1

    .line 1154
    .end local v1    # "exception$iv":Ljava/lang/Throwable;
    .end local v2    # "$i$f$recoverAndThrow":I
    :cond_2
    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1157
    :cond_3
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->startInternal(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 1159
    .end local v0    # "state":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->awaitSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1147
    :cond_4
    goto :goto_0
.end method

.method final synthetic awaitSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1162
    move-object v0, p1

    .local v0, "uCont":Lkotlin/coroutines/Continuation;
    const/4 v1, 0x0

    .line 1168
    .local v1, "$i$a$-suspendCoroutineUninterceptedOrReturn-JobSupport$awaitSuspend$2":I
    new-instance v2, Lkotlinx/coroutines/JobSupport$AwaitContinuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lkotlinx/coroutines/JobSupport$AwaitContinuation;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V

    .line 1169
    .local v2, "cont":Lkotlinx/coroutines/JobSupport$AwaitContinuation;
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    new-instance v4, Lkotlinx/coroutines/ResumeAwaitOnCompletion;

    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-direct {v4, p0, v5}, Lkotlinx/coroutines/ResumeAwaitOnCompletion;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    check-cast v4, Lkotlinx/coroutines/CompletionHandlerBase;

    .local v4, "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    const/4 v5, 0x0

    .line 1525
    .local v5, "$i$f$getAsHandler":I
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1169
    .end local v4    # "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    .end local v5    # "$i$f$getAsHandler":I
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlinx/coroutines/CancellableContinuationKt;->disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V

    .line 1170
    invoke-virtual {v2}, Lkotlinx/coroutines/JobSupport$AwaitContinuation;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 1162
    .end local v0    # "uCont":Lkotlin/coroutines/Continuation;
    .end local v1    # "$i$a$-suspendCoroutineUninterceptedOrReturn-JobSupport$awaitSuspend$2":I
    .end local v2    # "cont":Lkotlinx/coroutines/JobSupport$AwaitContinuation;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 1171
    :cond_0
    return-object v2
.end method

.method public synthetic cancel()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 27
    invoke-static {p0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel(Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p1, "cause"    # Ljava/util/concurrent/CancellationException;

    .line 601
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->cancelInternal(Ljava/lang/Throwable;)Z

    .line 602
    return-void
.end method

.method public synthetic cancel(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Added since 1.2.0 for binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 608
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelInternal(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public final cancelCoroutine(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 638
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Object;

    .line 643
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getOnCancelComplete$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelMakeCompleting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 649
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->makeCancelling(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public cancelInternal(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 613
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getHandlesException$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public childCancelled(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 631
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getHandlesException$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/Job$DefaultImpls;->fold(Lkotlinx/coroutines/Job;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 1
    .param p1, "key"    # Lkotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->get(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    return-object v0
.end method

.method public final getCancellationException()Ljava/util/concurrent/CancellationException;
    .locals 5

    .line 401
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 402
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$Finishing;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$Finishing;

    iget-object v1, v1, Lkotlinx/coroutines/JobSupport$Finishing;->rootCause:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is cancelling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lkotlinx/coroutines/JobSupport;->toCancellationException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 404
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_3

    .line 405
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, v2}, Lkotlinx/coroutines/JobSupport;->toCancellationException$default(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    goto :goto_0

    .line 406
    :cond_2
    new-instance v1, Lkotlinx/coroutines/JobCancellationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has completed normally"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlinx/coroutines/Job;

    invoke-direct {v1, v3, v2, v4}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    check-cast v1, Ljava/util/concurrent/CancellationException;

    .line 401
    .end local v0    # "state":Ljava/lang/Object;
    :goto_0
    nop

    .line 407
    return-object v1

    .line 404
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public getChildJobCancellationCause()Ljava/util/concurrent/CancellationException;
    .locals 5

    .line 673
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 674
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 675
    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$Finishing;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$Finishing;

    iget-object v1, v1, Lkotlinx/coroutines/JobSupport$Finishing;->rootCause:Ljava/lang/Throwable;

    goto :goto_0

    .line 676
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    goto :goto_0

    .line 677
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_4

    .line 678
    move-object v1, v2

    .line 674
    :goto_0
    nop

    .line 680
    .local v1, "rootCause":Ljava/lang/Throwable;
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    check-cast v2, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent job is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->stateString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlinx/coroutines/Job;

    invoke-direct {v2, v3, v1, v4}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :goto_2
    return-object v2

    .line 677
    .end local v1    # "rootCause":Ljava/lang/Throwable;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final getChildren()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation

    .line 895
    new-instance v0, Lkotlinx/coroutines/JobSupport$children$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/JobSupport$children$1;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 902
    return-object v0
.end method

.method public final getCompletedInternal$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 3

    .line 1136
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 1137
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1138
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v1, :cond_0

    .line 1139
    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1138
    :cond_0
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    throw v1

    .line 1137
    :cond_1
    const/4 v1, 0x0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This job has not completed yet"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method protected final getCompletionCause()Ljava/lang/Throwable;
    .locals 3

    .line 420
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 421
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$Finishing;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$Finishing;

    iget-object v1, v1, Lkotlinx/coroutines/JobSupport$Finishing;->rootCause:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 423
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_3

    .line 424
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    goto :goto_0

    .line 425
    :cond_2
    const/4 v1, 0x0

    .line 420
    .end local v0    # "state":Ljava/lang/Object;
    :goto_0
    nop

    .line 426
    return-object v1

    .line 423
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method protected final getCompletionCauseHandled()Z
    .locals 3

    .line 432
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-let-JobSupport$completionCauseHandled$1":I
    instance-of v2, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-virtual {v2}, Lkotlinx/coroutines/CompletedExceptionally;->getHandled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-JobSupport$completionCauseHandled$1":I
    :goto_0
    return v2
.end method

.method public final getCompletionExceptionOrNull()Ljava/lang/Throwable;
    .locals 3

    .line 1127
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 1128
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1129
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->getExceptionOrNull(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 1128
    :cond_0
    const/4 v1, 0x0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This job has not completed yet"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public getHandlesException$kotlinx_coroutines_core()Z
    .locals 1

    .line 960
    const/4 v0, 0x1

    return v0
.end method

.method public final getKey()Lkotlin/coroutines/CoroutineContext$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;"
        }
    .end annotation

    .line 28
    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    return-object v0
.end method

.method public getOnCancelComplete$kotlinx_coroutines_core()Z
    .locals 1

    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public final getOnJoin()Lkotlinx/coroutines/selects/SelectClause0;
    .locals 1

    .line 547
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/selects/SelectClause0;

    return-object v0
.end method

.method public final getState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 5

    .line 164
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1425
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 1426
    iget-object v2, v0, Lkotlinx/coroutines/JobSupport;->_state:Ljava/lang/Object;

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 165
    .local v3, "$i$a$-loop-JobSupport$state$1":I
    instance-of v4, v2, Lkotlinx/coroutines/internal/OpDescriptor;

    if-nez v4, :cond_0

    return-object v2

    .line 166
    :cond_0
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v4, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-JobSupport$state$1":I
    nop

    .line 1425
    goto :goto_0
.end method

.method protected handleJobException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 972
    const/4 v0, 0x0

    return v0
.end method

.method public handleOnCompletionException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 925
    throw p1
.end method

.method public final initParentJobInternal$kotlinx_coroutines_core(Lkotlinx/coroutines/Job;)V
    .locals 2
    .param p1, "parent"    # Lkotlinx/coroutines/Job;

    .line 141
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .local v0, "$i$a$-assert-JobSupport$initParentJobInternal$1":I
    iget-object v1, p0, Lkotlinx/coroutines/JobSupport;->parentHandle:Lkotlinx/coroutines/ChildHandle;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .end local v0    # "$i$a$-assert-JobSupport$initParentJobInternal$1":I
    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 142
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 143
    sget-object v0, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v0, Lkotlinx/coroutines/ChildHandle;

    iput-object v0, p0, Lkotlinx/coroutines/JobSupport;->parentHandle:Lkotlinx/coroutines/ChildHandle;

    .line 144
    return-void

    .line 146
    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->start()Z

    .line 148
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/ChildJob;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->attachChild(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;

    move-result-object v0

    .line 149
    .local v0, "handle":Lkotlinx/coroutines/ChildHandle;
    iput-object v0, p0, Lkotlinx/coroutines/JobSupport;->parentHandle:Lkotlinx/coroutines/ChildHandle;

    .line 151
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    invoke-interface {v0}, Lkotlinx/coroutines/ChildHandle;->dispose()V

    .line 153
    sget-object v1, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v1, Lkotlinx/coroutines/ChildHandle;

    iput-object v1, p0, Lkotlinx/coroutines/JobSupport;->parentHandle:Lkotlinx/coroutines/ChildHandle;

    .line 155
    :cond_4
    return-void
.end method

.method public final invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 2
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/DisposableHandle;"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    return-object v0
.end method

.method public final invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 17
    .param p1, "onCancelling"    # Z
    .param p2, "invokeImmediately"    # Z
    .param p3, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/DisposableHandle;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    const-string v0, "handler"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    const/4 v0, 0x0

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/JobNode;

    .line 444
    .local v4, "nodeCache":Ljava/lang/Object;
    move-object/from16 v5, p0

    .local v5, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v6, 0x0

    .line 1478
    .local v6, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1479
    invoke-virtual {v5}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v7

    .local v7, "state":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 445
    .local v8, "$i$a$-loopOnState-JobSupport$invokeOnCompletion$1":I
    nop

    .line 446
    instance-of v9, v7, Lkotlinx/coroutines/Empty;

    if-eqz v9, :cond_3

    .line 447
    move-object v9, v7

    check-cast v9, Lkotlinx/coroutines/Empty;

    invoke-virtual {v9}, Lkotlinx/coroutines/Empty;->isActive()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 449
    if-eqz v4, :cond_0

    move-object v9, v4

    goto :goto_1

    :cond_0
    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/JobSupport;->makeNode(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;

    move-result-object v9

    move-object v10, v9

    .local v10, "it":Lkotlinx/coroutines/JobNode;
    const/4 v11, 0x0

    .local v11, "$i$a$-also-JobSupport$invokeOnCompletion$1$node$1":I
    move-object v4, v10

    move-object/from16 v16, v9

    move-object v9, v4

    move-object/from16 v4, v16

    .line 450
    .end local v10    # "it":Lkotlinx/coroutines/JobNode;
    .end local v11    # "$i$a$-also-JobSupport$invokeOnCompletion$1$node$1":I
    .local v4, "node":Lkotlinx/coroutines/JobNode;
    .local v9, "nodeCache":Ljava/lang/Object;
    :goto_1
    sget-object v10, Lkotlinx/coroutines/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v10, v1, v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v0, v4

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    return-object v0

    :cond_1
    move-object v4, v9

    goto/16 :goto_6

    .line 452
    .end local v9    # "nodeCache":Ljava/lang/Object;
    .local v4, "nodeCache":Ljava/lang/Object;
    :cond_2
    move-object v9, v7

    check-cast v9, Lkotlinx/coroutines/Empty;

    invoke-direct {v1, v9}, Lkotlinx/coroutines/JobSupport;->promoteEmptyToNodeList(Lkotlinx/coroutines/Empty;)V

    goto/16 :goto_6

    .line 454
    :cond_3
    instance-of v9, v7, Lkotlinx/coroutines/Incomplete;

    if-eqz v9, :cond_10

    .line 455
    move-object v9, v7

    check-cast v9, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v9}, Lkotlinx/coroutines/Incomplete;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v9

    .line 456
    .local v9, "list":Lkotlinx/coroutines/NodeList;
    if-nez v9, :cond_5

    .line 457
    if-eqz v7, :cond_4

    move-object v10, v7

    check-cast v10, Lkotlinx/coroutines/JobNode;

    invoke-direct {v1, v10}, Lkotlinx/coroutines/JobSupport;->promoteSingleToNodeList(Lkotlinx/coroutines/JobNode;)V

    goto/16 :goto_6

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v10, "null cannot be cast to non-null type kotlinx.coroutines.JobNode<*>"

    invoke-direct {v0, v10}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_5
    move-object v10, v0

    check-cast v10, Ljava/lang/Throwable;

    .line 460
    .local v10, "rootCause":Ljava/lang/Object;
    sget-object v11, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v11, Lkotlinx/coroutines/DisposableHandle;

    .line 461
    .local v11, "handle":Ljava/lang/Object;
    if-eqz v2, :cond_b

    instance-of v12, v7, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v12, :cond_b

    .line 462
    const/4 v12, 0x0

    .line 1480
    .local v12, "$i$f$synchronized":I
    monitor-enter v7

    const/4 v13, 0x0

    .line 464
    .local v13, "$i$a$-synchronized-JobSupport$invokeOnCompletion$1$1":I
    :try_start_0
    move-object v14, v7

    check-cast v14, Lkotlinx/coroutines/JobSupport$Finishing;

    iget-object v14, v14, Lkotlinx/coroutines/JobSupport$Finishing;->rootCause:Ljava/lang/Throwable;

    move-object v10, v14

    .line 467
    if-eqz v10, :cond_6

    move-object/from16 v14, p3

    .local v14, "$this$isHandlerOf$iv":Lkotlin/jvm/functions/Function1;
    const/4 v15, 0x0

    .line 1481
    .local v15, "$i$f$isHandlerOf":I
    instance-of v0, v14, Lkotlinx/coroutines/ChildHandleNode;

    .end local v14    # "$this$isHandlerOf$iv":Lkotlin/jvm/functions/Function1;
    .end local v15    # "$i$f$isHandlerOf":I
    if-eqz v0, :cond_a

    move-object v0, v7

    check-cast v0, Lkotlinx/coroutines/JobSupport$Finishing;

    iget-boolean v0, v0, Lkotlinx/coroutines/JobSupport$Finishing;->isCompleting:Z

    if-nez v0, :cond_a

    .line 469
    :cond_6
    if-eqz v4, :cond_7

    move-object v14, v4

    goto :goto_2

    :cond_7
    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/JobSupport;->makeNode(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v14, v0

    .local v14, "it":Lkotlinx/coroutines/JobNode;
    const/4 v15, 0x0

    .local v15, "$i$a$-also-JobSupport$invokeOnCompletion$1$1$node$1":I
    move-object v4, v14

    move-object v4, v0

    .end local v4    # "nodeCache":Ljava/lang/Object;
    .end local v15    # "$i$a$-also-JobSupport$invokeOnCompletion$1$1$node$1":I
    .local v14, "nodeCache":Ljava/lang/Object;
    :goto_2
    move-object v0, v4

    .line 470
    .local v0, "node":Lkotlinx/coroutines/JobNode;
    :try_start_1
    invoke-direct {v1, v7, v9, v0}, Lkotlinx/coroutines/JobSupport;->addLastAtomic(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_8

    .end local v0    # "node":Lkotlinx/coroutines/JobNode;
    .end local v12    # "$i$f$synchronized":I
    .end local v13    # "$i$a$-synchronized-JobSupport$invokeOnCompletion$1$1":I
    monitor-exit v7

    move-object v4, v14

    goto :goto_6

    .line 472
    .restart local v0    # "node":Lkotlinx/coroutines/JobNode;
    .restart local v12    # "$i$f$synchronized":I
    .restart local v13    # "$i$a$-synchronized-JobSupport$invokeOnCompletion$1$1":I
    :cond_8
    if-nez v10, :cond_9

    :try_start_2
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/DisposableHandle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "node":Lkotlinx/coroutines/JobNode;
    .end local v12    # "$i$f$synchronized":I
    .end local v13    # "$i$a$-synchronized-JobSupport$invokeOnCompletion$1$1":I
    monitor-exit v7

    return-object v4

    .line 474
    .restart local v0    # "node":Lkotlinx/coroutines/JobNode;
    .restart local v12    # "$i$f$synchronized":I
    .restart local v13    # "$i$a$-synchronized-JobSupport$invokeOnCompletion$1$1":I
    :cond_9
    :try_start_3
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/DisposableHandle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v11, v4

    move-object v4, v14

    .line 476
    .end local v0    # "node":Lkotlinx/coroutines/JobNode;
    .end local v14    # "nodeCache":Ljava/lang/Object;
    .restart local v4    # "nodeCache":Ljava/lang/Object;
    :cond_a
    nop

    .end local v13    # "$i$a$-synchronized-JobSupport$invokeOnCompletion$1$1":I
    :try_start_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v7

    .line 1480
    .end local v12    # "$i$f$synchronized":I
    goto :goto_4

    .line 476
    .end local v4    # "nodeCache":Ljava/lang/Object;
    .restart local v12    # "$i$f$synchronized":I
    .restart local v14    # "nodeCache":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    move-object v4, v14

    goto :goto_3

    .end local v14    # "nodeCache":Ljava/lang/Object;
    .restart local v4    # "nodeCache":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    :goto_3
    monitor-exit v7

    throw v0

    .line 478
    .end local v12    # "$i$f$synchronized":I
    :cond_b
    :goto_4
    if-eqz v10, :cond_d

    .line 480
    if-eqz p2, :cond_c

    move-object v0, v10

    .local v0, "cause$iv":Ljava/lang/Throwable;
    move-object/from16 v12, p3

    .local v12, "$this$invokeIt$iv":Lkotlin/jvm/functions/Function1;
    const/4 v13, 0x0

    .line 1482
    .local v13, "$i$f$invokeIt":I
    invoke-interface {v12, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .end local v0    # "cause$iv":Ljava/lang/Throwable;
    .end local v12    # "$this$invokeIt$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "$i$f$invokeIt":I
    :cond_c
    return-object v11

    .line 483
    :cond_d
    if-eqz v4, :cond_e

    move-object v0, v4

    goto :goto_5

    :cond_e
    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/JobSupport;->makeNode(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;

    move-result-object v0

    move-object v12, v0

    .local v12, "it":Lkotlinx/coroutines/JobNode;
    const/4 v13, 0x0

    .local v13, "$i$a$-also-JobSupport$invokeOnCompletion$1$node$2":I
    move-object v4, v12

    move-object/from16 v16, v4

    move-object v4, v0

    move-object/from16 v0, v16

    .line 484
    .end local v12    # "it":Lkotlinx/coroutines/JobNode;
    .end local v13    # "$i$a$-also-JobSupport$invokeOnCompletion$1$node$2":I
    .local v0, "nodeCache":Ljava/lang/Object;
    .local v4, "node":Lkotlinx/coroutines/JobNode;
    :goto_5
    invoke-direct {v1, v7, v9, v4}, Lkotlinx/coroutines/JobSupport;->addLastAtomic(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object v12, v4

    check-cast v12, Lkotlinx/coroutines/DisposableHandle;

    return-object v12

    .line 485
    .end local v4    # "node":Lkotlinx/coroutines/JobNode;
    .end local v9    # "list":Lkotlinx/coroutines/NodeList;
    .end local v10    # "rootCause":Ljava/lang/Object;
    .end local v11    # "handle":Ljava/lang/Object;
    :cond_f
    nop

    .line 486
    move-object v4, v0

    .line 495
    .end local v0    # "nodeCache":Ljava/lang/Object;
    .end local v7    # "state":Ljava/lang/Object;
    .end local v8    # "$i$a$-loopOnState-JobSupport$invokeOnCompletion$1":I
    .local v4, "nodeCache":Ljava/lang/Object;
    :goto_6
    nop

    .line 1478
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 491
    .restart local v7    # "state":Ljava/lang/Object;
    .restart local v8    # "$i$a$-loopOnState-JobSupport$invokeOnCompletion$1":I
    :cond_10
    if-eqz p2, :cond_13

    instance-of v0, v7, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_7

    :cond_11
    move-object v0, v7

    :goto_7
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    goto :goto_8

    :cond_12
    const/4 v0, 0x0

    .local v0, "cause$iv":Ljava/lang/Throwable;
    :goto_8
    move-object/from16 v9, p3

    .local v9, "$this$invokeIt$iv":Lkotlin/jvm/functions/Function1;
    const/4 v10, 0x0

    .line 1483
    .local v10, "$i$f$invokeIt":I
    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .end local v0    # "cause$iv":Ljava/lang/Throwable;
    .end local v9    # "$this$invokeIt$iv":Lkotlin/jvm/functions/Function1;
    .end local v10    # "$i$f$invokeIt":I
    :cond_13
    sget-object v0, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .line 180
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 181
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v1}, Lkotlinx/coroutines/Incomplete;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isCancelled()Z
    .locals 2

    .line 187
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 188
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v1, :cond_1

    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public final isCompleted()Z
    .locals 1

    .line 184
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/Incomplete;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isCompletedExceptionally()Z
    .locals 1

    .line 1124
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/CompletedExceptionally;

    return v0
.end method

.method protected isScopedCoroutine()Z
    .locals 1

    .line 951
    const/4 v0, 0x0

    return v0
.end method

.method public final join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 527
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport;->joinInternal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/YieldKt;->checkCompletion(Lkotlin/coroutines/CoroutineContext;)V

    .line 529
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 531
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->joinSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final synthetic joinSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 541
    const/4 v0, 0x0

    .line 1495
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v1, p1

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 1496
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 1500
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 543
    .local v5, "$i$a$-suspendCancellableCoroutine-JobSupport$joinSuspend$2":I
    new-instance v6, Lkotlinx/coroutines/ResumeOnCompletion;

    move-object v7, p0

    check-cast v7, Lkotlinx/coroutines/Job;

    move-object v8, v4

    check-cast v8, Lkotlin/coroutines/Continuation;

    invoke-direct {v6, v7, v8}, Lkotlinx/coroutines/ResumeOnCompletion;-><init>(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlinx/coroutines/CompletionHandlerBase;

    .local v6, "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    const/4 v7, 0x0

    .line 1501
    .local v7, "$i$f$getAsHandler":I
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 543
    .end local v6    # "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    .end local v7    # "$i$f$getAsHandler":I
    invoke-virtual {p0, v6}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlinx/coroutines/CancellableContinuationKt;->disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V

    .line 544
    .end local v4    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-JobSupport$joinSuspend$2":I
    nop

    .line 1502
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v3

    .line 1495
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 1503
    :cond_0
    nop

    .line 544
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    return-object v3
.end method

.method public final makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "proposedUpdate"    # Ljava/lang/Object;

    .line 766
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1514
    .local v1, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1515
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 767
    .local v3, "$i$a$-loopOnState-JobSupport$makeCompleting$1":I
    const/4 v4, 0x0

    invoke-direct {p0, v2, p1, v4}, Lkotlinx/coroutines/JobSupport;->tryMakeCompleting(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    if-eq v5, v4, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v4, 0x3

    if-ne v5, v4, :cond_0

    .line 770
    nop

    .line 1514
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loopOnState-JobSupport$makeCompleting$1":I
    goto :goto_0

    .line 771
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loopOnState-JobSupport$makeCompleting$1":I
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "unexpected result"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 769
    :cond_1
    return v4

    .line 768
    :cond_2
    return v4
.end method

.method public final makeCompletingOnce$kotlinx_coroutines_core(Ljava/lang/Object;I)Z
    .locals 7
    .param p1, "proposedUpdate"    # Ljava/lang/Object;
    .param p2, "mode"    # I

    .line 786
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1516
    .local v1, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1517
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 787
    .local v3, "$i$a$-loopOnState-JobSupport$makeCompletingOnce$1":I
    invoke-direct {p0, v2, p1, p2}, Lkotlinx/coroutines/JobSupport;->tryMakeCompleting(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 792
    nop

    .line 1516
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loopOnState-JobSupport$makeCompletingOnce$1":I
    goto :goto_0

    .line 793
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loopOnState-JobSupport$makeCompletingOnce$1":I
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "unexpected result"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 791
    :cond_1
    const/4 v4, 0x0

    return v4

    .line 790
    :cond_2
    return v5

    .line 788
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Job "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is already complete or completing, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "but is being completed with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->getExceptionOrNull(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    .line 788
    invoke-direct {v4, v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .param p1, "key"    # Lkotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->minusKey(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public nameString$kotlinx_coroutines_core()Ljava/lang/String;
    .locals 1

    .line 1004
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelling(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 943
    return-void
.end method

.method protected onCompletionInternal(Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/Object;

    .line 982
    return-void
.end method

.method public onStartInternal$kotlinx_coroutines_core()V
    .locals 0

    .line 398
    return-void
.end method

.method public final parentCancelled(Lkotlinx/coroutines/ParentJob;)V
    .locals 1
    .param p1, "parentJob"    # Lkotlinx/coroutines/ParentJob;

    const-string v0, "parentJob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 618
    return-void
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->plus(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;
    .locals 1
    .param p1, "other"    # Lkotlinx/coroutines/Job;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Operator \'+\' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`."
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->plus(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method public final registerSelectClause0(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1504
    .local v1, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1505
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 553
    .local v3, "$i$a$-loopOnState-JobSupport$registerSelectClause0$1":I
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 554
    :cond_0
    instance-of v4, v2, Lkotlinx/coroutines/Incomplete;

    if-nez v4, :cond_2

    .line 556
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 557
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object v4

    invoke-static {p2, v4}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 559
    :cond_1
    return-void

    .line 561
    :cond_2
    invoke-direct {p0, v2}, Lkotlinx/coroutines/JobSupport;->startInternal(Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_3

    .line 563
    new-instance v4, Lkotlinx/coroutines/SelectJoinOnCompletion;

    invoke-direct {v4, p0, p1, p2}, Lkotlinx/coroutines/SelectJoinOnCompletion;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lkotlinx/coroutines/CompletionHandlerBase;

    .local v4, "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    const/4 v5, 0x0

    .line 1506
    .local v5, "$i$f$getAsHandler":I
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 563
    .end local v4    # "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    .end local v5    # "$i$f$getAsHandler":I
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v4

    invoke-interface {p1, v4}, Lkotlinx/coroutines/selects/SelectInstance;->disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V

    .line 564
    return-void

    .line 566
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loopOnState-JobSupport$registerSelectClause0$1":I
    :cond_3
    nop

    .line 1504
    goto :goto_0
.end method

.method public final registerSelectClause1Internal$kotlinx_coroutines_core(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .locals 6
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1180
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1526
    .local v1, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1527
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1181
    .local v3, "$i$a$-loopOnState-JobSupport$registerSelectClause1Internal$1":I
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 1182
    :cond_0
    instance-of v4, v2, Lkotlinx/coroutines/Incomplete;

    if-nez v4, :cond_3

    .line 1184
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1185
    instance-of v4, v2, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v4, :cond_1

    .line 1186
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v4, v4, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    invoke-interface {p1, v4}, Lkotlinx/coroutines/selects/SelectInstance;->resumeSelectCancellableWithException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1189
    :cond_1
    invoke-static {v2}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 1190
    :cond_2
    :goto_1
    nop

    .line 1192
    return-void

    .line 1194
    :cond_3
    invoke-direct {p0, v2}, Lkotlinx/coroutines/JobSupport;->startInternal(Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_4

    .line 1196
    new-instance v4, Lkotlinx/coroutines/SelectAwaitOnCompletion;

    invoke-direct {v4, p0, p1, p2}, Lkotlinx/coroutines/SelectAwaitOnCompletion;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lkotlinx/coroutines/CompletionHandlerBase;

    .local v4, "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    const/4 v5, 0x0

    .line 1528
    .local v5, "$i$f$getAsHandler":I
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1196
    .end local v4    # "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    .end local v5    # "$i$f$getAsHandler":I
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v4

    invoke-interface {p1, v4}, Lkotlinx/coroutines/selects/SelectInstance;->disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V

    .line 1197
    return-void

    .line 1199
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loopOnState-JobSupport$registerSelectClause1Internal$1":I
    :cond_4
    nop

    .line 1526
    goto :goto_0
.end method

.method public final removeNode$kotlinx_coroutines_core(Lkotlinx/coroutines/JobNode;)V
    .locals 6
    .param p1, "node"    # Lkotlinx/coroutines/JobNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/JobNode<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1507
    .local v1, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1508
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 575
    .local v3, "$i$a$-loopOnState-JobSupport$removeNode$1":I
    nop

    .line 576
    instance-of v4, v2, Lkotlinx/coroutines/JobNode;

    if-eqz v4, :cond_2

    .line 577
    if-eq v2, p1, :cond_0

    return-void

    .line 579
    :cond_0
    sget-object v4, Lkotlinx/coroutines/JobSupport;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    # getter for: Lkotlinx/coroutines/JobSupportKt;->EMPTY_ACTIVE:Lkotlinx/coroutines/Empty;
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getEMPTY_ACTIVE$p()Lkotlinx/coroutines/Empty;

    move-result-object v5

    invoke-virtual {v4, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 588
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loopOnState-JobSupport$removeNode$1":I
    :cond_1
    nop

    .line 1507
    goto :goto_0

    .line 581
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loopOnState-JobSupport$removeNode$1":I
    :cond_2
    instance-of v4, v2, Lkotlinx/coroutines/Incomplete;

    if-eqz v4, :cond_4

    .line 583
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v4}, Lkotlinx/coroutines/Incomplete;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lkotlinx/coroutines/JobNode;->remove()Z

    .line 584
    :cond_3
    return-void

    .line 586
    :cond_4
    return-void
.end method

.method public final selectAwaitCompletion$kotlinx_coroutines_core(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 1209
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_0

    .line 1210
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/selects/SelectInstance;->resumeSelectCancellableWithException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1212
    :cond_0
    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lkotlinx/coroutines/intrinsics/CancellableKt;->startCoroutineCancellable(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 1213
    :goto_0
    return-void
.end method

.method public final start()Z
    .locals 6

    .line 365
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1476
    .local v1, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1477
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 366
    .local v3, "$i$a$-loopOnState-JobSupport$start$1":I
    invoke-direct {p0, v2}, Lkotlinx/coroutines/JobSupport;->startInternal(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 370
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loopOnState-JobSupport$start$1":I
    nop

    .line 1476
    goto :goto_0

    .line 368
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loopOnState-JobSupport$start$1":I
    :cond_0
    return v5

    .line 367
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method protected final toCancellationException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 3
    .param p1, "$this$toCancellationException"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    const-string v0, "$this$toCancellationException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    goto :goto_2

    .line 411
    :cond_1
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    if-eqz p2, :cond_2

    move-object v1, p2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was cancelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/Job;

    invoke-direct {v0, v1, p1, v2}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :goto_2
    return-object v0
.end method

.method public final toDebugString()Ljava/lang/String;
    .locals 2

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->nameString$kotlinx_coroutines_core()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lkotlinx/coroutines/JobSupport;->stateString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
