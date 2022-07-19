.class public Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;
.super Landroid/app/Instrumentation;
.source "QuinoxInstrumentation.java"


# static fields
.field private static g:Z


# instance fields
.field private a:Z

.field private b:Landroid/app/Instrumentation;

.field private c:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/lang/String;

.field private h:Z

.field private i:Lcom/alipay/mobile/quinox/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/quinox/utils/Callback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/alipay/mobile/quinox/utils/Callback<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->g:Z

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;Landroid/app/Instrumentation;)V
    .locals 2
    .param p1, "context"    # Lcom/alipay/mobile/quinox/LauncherApplication;
    .param p2, "instrumentation"    # Landroid/app/Instrumentation;

    .line 105
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->a:Z

    .line 90
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->e:Z

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->f:Ljava/lang/String;

    .line 96
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->h:Z

    .line 97
    iput-object v1, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->i:Lcom/alipay/mobile/quinox/utils/Callback;

    .line 99
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 106
    iput-object p1, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 107
    iput-object p2, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->b:Landroid/app/Instrumentation;

    .line 108
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->d:Ljava/util/concurrent/BlockingQueue;

    .line 109
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/app/Activity;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->k:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 341
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v1

    .line 342
    .local v2, "activity":Landroid/app/Activity;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 343
    :try_start_1
    const-string v0, "android.content.ContextWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mBase"

    invoke-static {v0, v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 346
    .end local v2    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 345
    :cond_0
    :goto_0
    return-object v2

    .line 346
    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_1
    move-object v0, v2

    .line 347
    .local v0, "thr":Ljava/lang/Throwable;
    return-object v1

    .line 350
    .end local v0    # "thr":Ljava/lang/Throwable;
    :cond_1
    return-object v1
.end method

.method private a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 666
    const/4 v0, 0x0

    .line 667
    .local v0, "bundleName":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    const/4 v2, 0x0

    move-object v3, v2

    .line 668
    .local v3, "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 669
    new-instance v1, Ljava/io/File;

    invoke-interface {v3}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->o()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SaveInstanceState.cfg"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    .line 670
    .local v4, "file":Ljava/io/File;
    move-object v4, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    const/4 v1, 0x0

    .line 673
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 674
    move-object v1, v5

    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringArray2(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v5

    .line 675
    .local v2, "ary":[Ljava/lang/String;
    move-object v2, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    array-length v6, v2

    if-ne v5, v6, :cond_0

    .line 677
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 678
    const/4 v5, 0x1

    aget-object v5, v2, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    goto :goto_0

    .line 683
    .end local v2    # "ary":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 680
    :catch_0
    move-exception v2

    .line 681
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v5, "Instrumentation"

    invoke-static {v5, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 684
    nop

    .line 685
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    goto :goto_2

    .line 683
    :goto_1
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v2

    .line 688
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    :goto_2
    return-object v0
.end method

.method private a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "trigger"    # Ljava/lang/String;

    const-string v0, "ActivityReferrer"

    .line 749
    if-nez p1, :cond_0

    .line 750
    return-void

    .line 752
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->reflectGetReferrer(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 753
    .local v2, "referrer":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 757
    :cond_1
    const/4 v1, 0x0

    .line 758
    .local v1, "action":Ljava/lang/String;
    const/4 v3, 0x0

    .line 759
    .local v3, "component":Ljava/lang/String;
    const/4 v4, 0x0

    .line 760
    .local v4, "data":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 761
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    move-object p2, v5

    .line 763
    :cond_2
    if-eqz p2, :cond_3

    .line 764
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 765
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 766
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 767
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 771
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Trigger:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Component:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Referrer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Intent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v5, ".launcher"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "launcher"

    .line 773
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, ".packageinstaller"

    .line 774
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "com.miui.home"

    .line 775
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 780
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 781
    .local v5, "params":Ljava/util/HashMap;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 782
    const-string v6, "trigger"

    invoke-virtual {v5, v6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 785
    const-string v6, "referrer"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 788
    const-string v6, "action"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 791
    const-string v6, "data"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 794
    const-string v6, "component"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    :cond_9
    const-string v6, "ActivityReferrer"

    const-string v7, "Entrance"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "referrer":Ljava/lang/String;
    .end local v3    # "component":Ljava/lang/String;
    .end local v4    # "data":Ljava/lang/String;
    .end local v5    # "params":Ljava/util/HashMap;
    return-void

    .line 776
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v2    # "referrer":Ljava/lang/String;
    .restart local v3    # "component":Ljava/lang/String;
    .restart local v4    # "data":Ljava/lang/String;
    :cond_a
    :goto_0
    return-void

    .line 754
    .end local v1    # "action":Ljava/lang/String;
    .end local v3    # "component":Ljava/lang/String;
    .end local v4    # "data":Ljava/lang/String;
    :cond_b
    :goto_1
    return-void

    .line 797
    .end local v2    # "referrer":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 798
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 800
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundleName"    # Ljava/lang/String;

    .line 648
    iget-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    const/4 v1, 0x0

    .line 649
    .local v1, "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 650
    new-instance v0, Ljava/io/File;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SaveInstanceState.cfg"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .local v0, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 654
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 655
    move-object v2, v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 656
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 655
    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringArray2(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :goto_0
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 661
    return-void

    .line 660
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 657
    :catch_0
    move-exception v3

    .line 658
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    const-string v4, "Instrumentation"

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 660
    :goto_1
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v3

    .line 663
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    :cond_0
    return-void
.end method


# virtual methods
.method public addNewActivityCallback(Lcom/alipay/mobile/quinox/utils/Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/alipay/mobile/quinox/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/quinox/utils/Callback<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 21
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "mBase"

    const-string v11, "mResources"

    const-string v12, "Instrumentation"

    .line 400
    sget-boolean v0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->g:Z

    const-string v13, ")"

    const-string v14, "callActivityOnCreate(activity="

    const/4 v15, 0x1

    if-nez v0, :cond_1

    .line 401
    sput-boolean v15, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->g:Z

    .line 403
    :try_start_0
    const-string v0, "QuinoxInstrumentation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "className":Ljava/lang/String;
    const-string v2, "com.eg.android.AlipayGphone.AlipayLogin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.alipay.mobile.quinox.LauncherActivity"

    .line 406
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.alipay.mobile.quinox.LauncherActivity.alias"

    .line 407
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.alipay.mobile.permission.PermissionGateActivity"

    .line 408
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.alipay.mobile.quinox.SchemeLauncherActivity"

    .line 409
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupCrash(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 414
    :catchall_0
    move-exception v0

    .line 415
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v2, "Quinox.ActivityLifecycleCallback"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    :try_start_1
    const-class v0, Landroid/app/Activity;

    const-string v2, "mInstrumentation"

    invoke-static {v0, v8, v2, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 425
    goto :goto_1

    .line 423
    :catchall_1
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v12, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 429
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v7, 0x0

    move-object v3, v7

    .line 430
    .local v3, "intent":Landroid/content/Intent;
    move-object v6, v2

    .end local v3    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 431
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 434
    :cond_2
    if-eqz v9, :cond_6

    .line 438
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v7

    .line 439
    .local v3, "bundleName":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "callActivityOnCreate() get bundleName="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v2, v1, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getHostClassLoader()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    move-object v4, v7

    .line 442
    .local v4, "hostClassLoader":Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    invoke-virtual {v2, v3, v15}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;Z)Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v5, v7

    .line 443
    .local v5, "_classLoader":Ljava/lang/ClassLoader;
    move-object v5, v2

    if-eqz v2, :cond_3

    .line 444
    move-object v0, v5

    move-object v2, v0

    goto :goto_2

    .line 443
    :cond_3
    move-object v2, v0

    goto :goto_2

    .line 439
    .end local v4    # "hostClassLoader":Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    .end local v5    # "_classLoader":Ljava/lang/ClassLoader;
    :cond_4
    move-object v2, v0

    move-object v4, v7

    move-object v5, v4

    .line 447
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    :goto_2
    invoke-virtual {v9, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 452
    :try_start_2
    const-string v0, "android:viewHierarchyState"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 453
    .local v4, "viewHierarchyState":Landroid/os/Bundle;
    move-object v4, v0

    if-eqz v0, :cond_5

    .line 454
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 458
    .end local v4    # "viewHierarchyState":Landroid/os/Bundle;
    :cond_5
    goto :goto_3

    .line 456
    :catchall_2
    move-exception v0

    .line 457
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v12, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v3    # "bundleName":Ljava/lang/String;
    :goto_3
    move-object/from16 v16, v2

    move-object v0, v5

    goto :goto_4

    .line 434
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :cond_6
    move-object/from16 v16, v0

    move-object v0, v7

    .line 462
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .local v16, "classLoader":Ljava/lang/ClassLoader;
    :goto_4
    new-instance v17, Lcom/alipay/mobile/quinox/activity/QuinoxContext;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move-object/from16 v19, v6

    .end local v6    # "intent":Landroid/content/Intent;
    .local v19, "intent":Landroid/content/Intent;
    move-object/from16 v6, v16

    move-object/from16 v20, v7

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/quinox/activity/QuinoxContext;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 466
    .local v2, "quinoxContext":Lcom/alipay/mobile/quinox/activity/QuinoxContext;
    :try_start_3
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 467
    .local v3, "bundleResources":Landroid/content/res/Resources;
    const-class v4, Landroid/view/ContextThemeWrapper;

    invoke-static {v4, v8, v11}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    .line 468
    .local v0, "res":Landroid/content/res/Resources;
    instance-of v4, v4, Lcom/alipay/mobile/quinox/resources/BundleResources;

    if-nez v4, :cond_7

    .line 470
    const-class v4, Landroid/view/ContextThemeWrapper;

    invoke-static {v4, v8, v11, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 472
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v5, v20

    .line 473
    .local v5, "overrideRes":Landroid/content/res/Resources;
    move-object v5, v4

    if-eq v4, v3, :cond_c

    instance-of v4, v5, Lcom/alipay/mobile/quinox/resources/BundleResources;

    if-nez v4, :cond_c

    .line 474
    instance-of v4, v8, Lcom/alipay/mobile/quinox/LauncherActivity;

    if-nez v4, :cond_b

    .line 475
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "found activity.getResources() is not BundleResource!, activity="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " resources="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 476
    .local v7, "msg":Ljava/lang/String;
    invoke-static {v12, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-le v4, v6, :cond_8

    .line 479
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " setImpl() -> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v4, "mResourcesImpl"

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 482
    .local v4, "bundleResourceImpl":Ljava/lang/Object;
    const-string v6, "setImpl"

    new-array v11, v15, [Ljava/lang/Class;

    const-string v17, "android.content.res.ResourcesImpl"

    .line 483
    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v11, v18

    move-object/from16 v17, v0

    .end local v0    # "res":Landroid/content/res/Resources;
    .local v17, "res":Landroid/content/res/Resources;
    new-array v0, v15, [Ljava/lang/Object;

    aput-object v4, v0, v18

    .line 482
    invoke-static {v5, v6, v11, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    move-object/from16 v4, v20

    .end local v4    # "bundleResourceImpl":Ljava/lang/Object;
    goto :goto_6

    .line 485
    .end local v17    # "res":Landroid/content/res/Resources;
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_8
    move-object/from16 v17, v0

    .end local v0    # "res":Landroid/content/res/Resources;
    .restart local v17    # "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "androidx.appcompat.widget.TintResources"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 486
    const-string v0, "try to fix TintResources for AppCompatActivity"

    invoke-static {v12, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    move-object/from16 v4, v20

    invoke-static {v8, v11, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 492
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getThemeResId()I

    move-result v0

    .line 493
    .local v0, "oldThemeId":I
    invoke-static {v8, v4}, Lcom/alipay/mobile/quinox/utils/ApiCompat;->setTheme(Landroid/view/ContextThemeWrapper;Landroid/content/res/Resources$Theme;)V

    .line 494
    if-eqz v0, :cond_9

    .line 495
    invoke-virtual {v8, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 497
    .end local v0    # "oldThemeId":I
    :cond_9
    goto :goto_6

    .line 498
    :cond_a
    move-object/from16 v4, v20

    const-string v0, "checkActivityResources"

    invoke-static {v0, v4, v7}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_6

    .line 474
    .end local v7    # "msg":Ljava/lang/String;
    .end local v17    # "res":Landroid/content/res/Resources;
    .local v0, "res":Landroid/content/res/Resources;
    :cond_b
    move-object/from16 v17, v0

    move-object/from16 v4, v20

    .end local v0    # "res":Landroid/content/res/Resources;
    .restart local v17    # "res":Landroid/content/res/Resources;
    goto :goto_5

    .line 473
    .end local v17    # "res":Landroid/content/res/Resources;
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_c
    move-object/from16 v17, v0

    move-object/from16 v4, v20

    .line 503
    .end local v0    # "res":Landroid/content/res/Resources;
    .restart local v17    # "res":Landroid/content/res/Resources;
    :goto_5
    move-object v7, v4

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    move-object v6, v7

    .line 504
    .local v6, "theme":Landroid/content/res/Resources$Theme;
    move-object v6, v0

    if-eqz v0, :cond_e

    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getThemeResId()I

    move-result v0

    .local v0, "oldThemeId":I
    move-object v7, v4

    .line 507
    .local v7, "assetManager":Landroid/content/res/AssetManager;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v11, v4, :cond_d

    .line 508
    const-string v4, "getResources"

    invoke-static {v6, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    .line 509
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 510
    .end local v7    # "assetManager":Landroid/content/res/AssetManager;
    .local v4, "assetManager":Landroid/content/res/AssetManager;
    goto :goto_7

    .line 511
    .end local v4    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v7    # "assetManager":Landroid/content/res/AssetManager;
    :cond_d
    const-string v4, "mAssets"

    invoke-static {v6, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/AssetManager;

    .line 513
    .end local v7    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v4    # "assetManager":Landroid/content/res/AssetManager;
    :goto_7
    if-eqz v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    if-eq v4, v7, :cond_e

    .line 514
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v7

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v11, "quinox_fix_theme_resources"

    .line 515
    invoke-interface {v7, v11, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 516
    if-eqz v7, :cond_e

    .line 518
    const/4 v7, 0x0

    invoke-static {v8, v7}, Lcom/alipay/mobile/quinox/utils/ApiCompat;->setTheme(Landroid/view/ContextThemeWrapper;Landroid/content/res/Resources$Theme;)V

    .line 519
    if-eqz v0, :cond_e

    .line 520
    invoke-virtual {v8, v0}, Landroid/app/Activity;->setTheme(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 529
    .end local v0    # "oldThemeId":I
    .end local v3    # "bundleResources":Landroid/content/res/Resources;
    .end local v4    # "assetManager":Landroid/content/res/AssetManager;
    .end local v5    # "overrideRes":Landroid/content/res/Resources;
    .end local v6    # "theme":Landroid/content/res/Resources$Theme;
    .end local v17    # "res":Landroid/content/res/Resources;
    :cond_e
    goto :goto_8

    .line 525
    :catchall_3
    move-exception v0

    move-object v3, v0

    .line 526
    .local v3, "e":Ljava/lang/Throwable;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v0, v4, :cond_f

    .line 527
    invoke-static {v12, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_f
    :goto_8
    :try_start_4
    const-class v0, Landroid/content/ContextWrapper;

    invoke-static {v0, v8, v10, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 535
    goto :goto_9

    .line 533
    :catchall_4
    move-exception v0

    move-object v3, v0

    .line 534
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-static {v12, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_9
    :try_start_5
    const-class v0, Landroid/view/ContextThemeWrapper;

    invoke-static {v0, v8, v10, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 541
    goto :goto_a

    .line 539
    :catchall_5
    move-exception v0

    move-object v3, v0

    .line 540
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-static {v12, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", icicle="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v9, :cond_10

    const-string v4, "null"

    goto :goto_b

    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {}, Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager;->getInstrumentCallback()Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;

    move-result-object v0

    .line 546
    .local v3, "qiCallback":Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;
    move-object v3, v0

    if-eqz v0, :cond_11

    invoke-interface {v3, v8, v9}, Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;->onCallActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 548
    :cond_11
    const-string v0, "onCreate"

    const/4 v4, 0x0

    invoke-direct {v1, v8, v4, v0}, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 550
    invoke-super/range {p0 .. p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 551
    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callActivityOnDestroy(activity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instrumentation"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    return-void

    .line 733
    :catchall_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 739
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 564
    const-string v0, "onNewIntent"

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 565
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callActivityOnNewIntent(activity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instrumentation"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callActivityOnPause(activity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instrumentation"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 704
    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .line 555
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callActivityOnPostCreate(activity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", icicle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instrumentation"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 583
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callActivityOnRestart(activity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instrumentation"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callActivityOnRestoreInstanceState(activity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", savedInstanceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instrumentation"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 695
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 592
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callActivityOnResume(activity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instrumentation"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->setConfigurationChanged(Z)V

    .line 596
    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 621
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 623
    const-string v0, "Instrumentation"

    if-eqz p2, :cond_1

    .line 624
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 625
    .local v3, "keySet":Ljava/util/Set;
    move-object v3, v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 626
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 627
    .local v1, "_classLoader":Ljava/lang/ClassLoader;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 628
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 629
    .local v2, "object":Ljava/lang/Object;
    move-object v2, v6

    if-eqz v6, :cond_0

    .line 630
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 631
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    if-eq v1, v6, :cond_0

    instance-of v7, v6, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    if-eqz v7, :cond_0

    .line 632
    move-object v4, v6

    check-cast v4, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a()Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v4

    .line 634
    .local v4, "bundleName":Ljava/lang/String;
    invoke-direct {p0, p1, v4}, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 636
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "callActivityOnSaveInstanceState() put bundleName="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    goto :goto_1

    .line 640
    .end local v2    # "object":Ljava/lang/Object;
    .end local v4    # "bundleName":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    goto :goto_0

    .line 644
    .end local v1    # "_classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "keySet":Ljava/util/Set;
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callActivityOnSaveInstanceState(activity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 571
    invoke-static {}, Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager;->getInstrumentCallback()Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;

    move-result-object v0

    const/4 v1, 0x0

    .line 572
    .local v1, "qiCallback":Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;->onCallActivityOnStart(Landroid/app/Activity;)V

    .line 574
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "callActivityOnStart(activity="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Instrumentation"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callActivityOnStop(activity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instrumentation"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 711
    invoke-static {}, Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager;->getInstrumentCallback()Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;

    move-result-object v0

    const/4 v1, 0x0

    .line 712
    .local v1, "qiCallback":Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Lcom/alipay/mobile/quinox/api/activity/LifecycleCallbackManager$QuinoxInstrumentCallback;->onCallActivityOnStop(Landroid/app/Activity;)V

    .line 713
    :cond_0
    return-void
.end method

.method public callActivityOnUserLeaving(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callActivityOnUserLeaving(activity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instrumentation"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 609
    iget-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->checkAppCovered(Landroid/content/Context;)V

    .line 613
    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 3
    .param p1, "app"    # Landroid/app/Application;

    .line 123
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->a:Z

    const-string v1, "callApplicationOnCreate(app="

    const-string v2, "Instrumentation"

    if-nez v0, :cond_0

    .line 124
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") again??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->a:Z

    .line 130
    return-void
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 22
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .line 157
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "execStartActivity("

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") start."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Instrumentation"

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/alipay/mobile/quinox/api/activity/ActivityRouterManager;->getInstance()Lcom/alipay/mobile/quinox/api/activity/ActivityRouterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/api/activity/ActivityRouterManager;->getActivityRouter()Lcom/alipay/mobile/quinox/api/activity/ActivityRouter;

    move-result-object v0

    const/4 v7, 0x0

    move-object v8, v7

    .line 161
    .local v8, "activityRouter":Lcom/alipay/mobile/quinox/api/activity/ActivityRouter;
    move-object v8, v0

    if-eqz v0, :cond_1

    .line 163
    move/from16 v9, p6

    :try_start_0
    invoke-virtual {v8, v2, v4, v9}, Lcom/alipay/mobile/quinox/api/activity/ActivityRouter;->execStartActivity(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .local v7, "_intent":Landroid/content/Intent;
    move-object v7, v0

    if-eqz v0, :cond_0

    .line 165
    move-object v0, v7

    .end local p5    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 164
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local p5    # "intent":Landroid/content/Intent;
    :cond_0
    move-object v0, v4

    .line 169
    .end local v7    # "_intent":Landroid/content/Intent;
    .end local p5    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 167
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local p5    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    move-object v7, v0

    .line 168
    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 161
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_1
    move/from16 v9, p6

    .line 174
    .end local p5    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    :goto_1
    const/4 v10, 0x1

    :try_start_1
    iget-object v0, v1, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v4, v0, v10}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 175
    .local v7, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_2

    .line 177
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 178
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "componentName="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 181
    .local v11, "targetClassName":Ljava/lang/String;
    iget-object v12, v1, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v12}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 182
    invoke-interface {v12, v11}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v12

    .line 184
    .local v12, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "targetClassName="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", getBundleByComponent() bundle="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v13

    const v14, -0x4000001

    and-int/2addr v13, v14

    invoke-virtual {v4, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    if-eqz v12, :cond_2

    .line 192
    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v1, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v14}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-class v15, Lcom/alipay/mobile/quinox/activity/StubActivity;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    iget-object v13, v1, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v13, v11}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 194
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mActivityQueue.offer("

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v11    # "targetClassName":Ljava/lang/String;
    .end local v12    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_2
    goto :goto_2

    .line 198
    :catchall_1
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    const/4 v7, 0x0

    .line 204
    .local v7, "object":Ljava/lang/Object;
    :try_start_2
    const-class v0, Landroid/app/Instrumentation;

    iget-object v11, v1, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->b:Landroid/app/Instrumentation;

    const-string v12, "execStartActivity"

    const/4 v13, 0x7

    new-array v14, v13, [Ljava/lang/Class;

    const-class v15, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const-class v15, Landroid/os/IBinder;

    aput-object v15, v14, v10

    const-class v15, Landroid/os/IBinder;

    const/16 v17, 0x2

    aput-object v15, v14, v17

    const-class v15, Landroid/app/Activity;

    const/16 v18, 0x3

    aput-object v15, v14, v18

    const-class v15, Landroid/content/Intent;

    const/16 v19, 0x4

    aput-object v15, v14, v19

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x5

    aput-object v15, v14, v20

    const-class v15, Landroid/os/Bundle;

    const/16 v21, 0x6

    aput-object v15, v14, v21

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v2, v13, v16

    aput-object p2, v13, v10

    aput-object p3, v13, v17

    aput-object v3, v13, v18

    aput-object v4, v13, v19

    .line 206
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v13, v20

    aput-object p7, v13, v21

    .line 204
    invoke-static {v0, v11, v12, v14, v13}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v7, v0

    .line 209
    goto :goto_3

    .line 207
    :catchall_2
    move-exception v0

    .line 208
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") ActivityResult:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    move-object v0, v7

    check-cast v0, Landroid/app/Instrumentation$ActivityResult;

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 22
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "user"    # Landroid/os/UserHandle;

    .line 217
    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "execStartActivity(target="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") start."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Instrumentation"

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v7, 0x0

    .line 220
    .local v7, "object":Ljava/lang/Object;
    :try_start_0
    const-class v0, Landroid/app/Instrumentation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v8, p0

    :try_start_1
    iget-object v9, v8, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->b:Landroid/app/Instrumentation;

    const-string v10, "execStartActivity"

    const/16 v11, 0x8

    new-array v12, v11, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const-class v13, Landroid/os/IBinder;

    const/4 v15, 0x1

    aput-object v13, v12, v15

    const-class v13, Landroid/os/IBinder;

    const/16 v16, 0x2

    aput-object v13, v12, v16

    const-class v13, Landroid/app/Activity;

    const/16 v17, 0x3

    aput-object v13, v12, v17

    const-class v13, Landroid/content/Intent;

    const/16 v18, 0x4

    aput-object v13, v12, v18

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x5

    aput-object v13, v12, v19

    const-class v13, Landroid/os/Bundle;

    const/16 v20, 0x6

    aput-object v13, v12, v20

    const-class v13, Landroid/os/UserHandle;

    const/16 v21, 0x7

    aput-object v13, v12, v21

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p1, v11, v14

    aput-object p2, v11, v15

    aput-object p3, v11, v16

    aput-object v1, v11, v17

    aput-object v2, v11, v18

    .line 222
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v19

    aput-object p7, v11, v20

    aput-object v3, v11, v21

    .line 220
    invoke-static {v0, v9, v10, v12, v11}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v0

    .line 225
    goto :goto_1

    .line 223
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v8, p0

    .line 224
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") ActivityResult:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    move-object v0, v7

    check-cast v0, Landroid/app/Instrumentation$ActivityResult;

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 17
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .line 135
    move-object/from16 v1, p4

    const-string v2, "Instrumentation"

    const/4 v3, 0x0

    .line 137
    .local v3, "object":Ljava/lang/Object;
    :try_start_0
    const-class v0, Landroid/app/Instrumentation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v4, p0

    :try_start_1
    iget-object v5, v4, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->b:Landroid/app/Instrumentation;

    const-string v6, "execStartActivity"

    const/4 v7, 0x7

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-class v9, Landroid/os/IBinder;

    const/4 v11, 0x1

    aput-object v9, v8, v11

    const-class v9, Landroid/os/IBinder;

    const/4 v12, 0x2

    aput-object v9, v8, v12

    const-class v9, Ljava/lang/String;

    const/4 v13, 0x3

    aput-object v9, v8, v13

    const-class v9, Landroid/content/Intent;

    const/4 v14, 0x4

    aput-object v9, v8, v14

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x5

    aput-object v9, v8, v15

    const-class v9, Landroid/os/Bundle;

    const/16 v16, 0x6

    aput-object v9, v8, v16

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v10

    aput-object p2, v7, v11

    aput-object p3, v7, v12

    aput-object v1, v7, v13

    aput-object p5, v7, v14

    .line 139
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v15

    aput-object p7, v7, v16

    .line 137
    invoke-static {v0, v5, v6, v8, v7}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    .line 142
    goto :goto_1

    .line 140
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v4, p0

    .line 141
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "execStartActivity(target="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") ActivityResult:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    move-object v0, v3

    check-cast v0, Landroid/app/Instrumentation$ActivityResult;

    return-object v0
.end method

.method public invokeContextMenuAction(Landroid/app/Activity;II)Z
    .locals 2
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "id"    # I
    .param p3, "flag"    # I

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invokeContextMenuAction(targetActivity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instrumentation"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-super {p0, p1, p2, p3}, Landroid/app/Instrumentation;->invokeContextMenuAction(Landroid/app/Activity;II)Z

    move-result v0

    return v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 11
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    const-string v0, "TargetActivityNotFound"

    const-string v1, "classloader="

    const-string v2, ", className="

    .line 236
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setUILaunched(Z)V

    .line 237
    iget-boolean v3, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->h:Z

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 238
    iput-boolean v4, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->h:Z

    .line 239
    iget-object v3, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->i:Lcom/alipay/mobile/quinox/utils/Callback;

    if-eqz v3, :cond_0

    .line 240
    invoke-interface {v3, p2}, Lcom/alipay/mobile/quinox/utils/Callback;->onCallback(Ljava/lang/Object;)V

    .line 241
    iput-object v5, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->i:Lcom/alipay/mobile/quinox/utils/Callback;

    .line 245
    :cond_0
    const-class v3, Lcom/alipay/mobile/quinox/activity/StubActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "Instrumentation"

    if-eqz v3, :cond_3

    .line 246
    iget-object v3, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object p2, v3

    check-cast p2, Ljava/lang/String;

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "mActivityQueue.poll(): "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    if-nez p2, :cond_1

    .line 250
    iget-object v3, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->f:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 254
    iget-object p2, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->f:Ljava/lang/String;

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "className = mLastStubActivityClassName : "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_1
    iput-object p2, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->f:Ljava/lang/String;

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "mLastStubActivityClassName = "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "intent="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "TARGET_ACTIVITY_NOT_FOUND"

    invoke-static {v7, v5, v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 264
    if-eqz p3, :cond_3

    .line 265
    const-class v3, Lcom/alipay/mobile/quinox/activity/StubActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 269
    :try_start_0
    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    goto :goto_1

    .line 270
    :catchall_0
    move-exception v3

    move-object v3, v5

    .line 271
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 280
    .local v0, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    move-object v7, v5

    .line 281
    .local v7, "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    move-object v7, v3

    if-eqz v3, :cond_4

    .line 282
    invoke-interface {v7, p2}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    .line 285
    :cond_4
    move-object v3, p1

    .line 286
    .local v3, "tmpCl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_5

    .line 287
    iget-object v8, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/LauncherApplication;->getHostClassLoader()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    move-object v9, v5

    .line 288
    .local v9, "hostClassLoader":Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v4}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;Z)Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_2

    .line 286
    .end local v9    # "hostClassLoader":Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    :cond_5
    move-object v9, v5

    .line 290
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "newActivity(className="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", intent="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", cl="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", tmpCl="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", bundle="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    if-nez p1, :cond_6

    .line 298
    move-object p1, v3

    .line 303
    :cond_6
    :try_start_1
    invoke-direct {p0, p2}, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->a(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v4

    .line 304
    .local v9, "activity":Landroid/app/Activity;
    move-object v9, v4

    if-nez v4, :cond_7

    .line 305
    invoke-super {p0, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v4

    move-object v9, v4

    .line 307
    :cond_7
    if-eqz p3, :cond_8

    .line 309
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 314
    :cond_8
    nop

    .line 316
    if-eqz v9, :cond_a

    .line 324
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/utils/Callback;

    .line 325
    invoke-interface {v2, v9}, Lcom/alipay/mobile/quinox/utils/Callback;->onCallback(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 326
    goto :goto_3

    .line 329
    :cond_9
    goto :goto_4

    .line 327
    :catchall_1
    move-exception v1

    .line 328
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v6, v1}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_4
    const-string v1, "ClientEvent_PageLaunch"

    invoke-static {v1, v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    return-object v9

    .line 317
    :cond_a
    new-instance v4, Ljava/lang/NullPointerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 311
    .end local v9    # "activity":Landroid/app/Activity;
    :catchall_2
    move-exception v4

    .line 312
    .local v4, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "newActivity exception: (classloader="

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v4}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .locals 3
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 113
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->a:Z

    const-string v1, "Instrumentation"

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "newApplication() but already created, Application:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "newApplication(cl="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", className="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", context="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onException(obj="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instrumentation"

    invoke-static {v1, v0, p2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 744
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public precreateActivity(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/app/Activity;
    .locals 12
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "cl"    # Ljava/lang/ClassLoader;

    const-string v0, "android.app.ContextImpl"

    const-string v1, "mBase"

    const-string v2, "android.content.ContextWrapper"

    .line 355
    const/4 v3, 0x0

    .line 357
    .local v3, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    move-object v6, v4

    .line 358
    .local v6, "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    move-object v6, v5

    if-eqz v5, :cond_0

    .line 359
    invoke-interface {v6, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v5

    move-object v3, v5

    .line 362
    :cond_0
    move-object v5, p2

    .line 363
    .local v5, "tmpCl":Ljava/lang/ClassLoader;
    const/4 v7, 0x1

    if-eqz v3, :cond_1

    .line 364
    iget-object v8, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/LauncherApplication;->getHostClassLoader()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    move-object v9, v4

    .line 365
    .local v9, "hostClassLoader":Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v7}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;Z)Ljava/lang/ClassLoader;

    move-result-object v8

    move-object p2, v8

    .line 368
    .end local v9    # "hostClassLoader":Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    :cond_1
    if-nez p2, :cond_2

    .line 369
    move-object p2, v5

    .line 371
    :cond_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-super {p0, p2, p1, v8}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v8

    .line 372
    .local v8, "activity":Landroid/app/Activity;
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v9, v10, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 373
    .local v9, "base":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 374
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v9, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    .line 376
    :cond_3
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 377
    const-string v0, "android.view.ContextThemeWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "attachBaseContext"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v10, v2, v11

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v9, v7, v11

    invoke-static {v0, v8, v1, v2, v7}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mApplication"

    iget-object v2, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->c:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0, v8, v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->k:Ljava/util/HashMap;

    if-nez v0, :cond_4

    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->k:Ljava/util/HashMap;

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    return-object v8

    .line 387
    .end local v3    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v5    # "tmpCl":Ljava/lang/ClassLoader;
    .end local v6    # "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .end local v8    # "activity":Landroid/app/Activity;
    .end local v9    # "base":Ljava/lang/Object;
    :cond_5
    goto :goto_0

    .line 385
    :catchall_0
    move-exception v0

    .line 386
    .local v0, "thr":Ljava/lang/Throwable;
    const-string v1, "Instrumentation"

    const-string v2, "QuinoxInstrumentation precreateActivity error!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    .end local v0    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-object v4
.end method

.method public removeNewActivityCallback(Lcom/alipay/mobile/quinox/utils/Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/alipay/mobile/quinox/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/quinox/utils/Callback<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 812
    return-void
.end method

.method public setConfigurationChanged(Z)V
    .locals 0
    .param p1, "configurationChanged"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->e:Z

    .line 103
    return-void
.end method

.method public setFirstActivityCreatedCallback(Lcom/alipay/mobile/quinox/utils/Callback;)V
    .locals 0
    .param p1, "mFirstActivityCreatedCallback"    # Lcom/alipay/mobile/quinox/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/quinox/utils/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 803
    iput-object p1, p0, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->i:Lcom/alipay/mobile/quinox/utils/Callback;

    .line 804
    return-void
.end method
