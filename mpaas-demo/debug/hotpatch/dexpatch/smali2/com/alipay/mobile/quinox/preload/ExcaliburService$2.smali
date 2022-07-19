.class Lcom/alipay/mobile/quinox/preload/ExcaliburService$2;
.super Ljava/lang/Object;
.source "ExcaliburService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/preload/ExcaliburService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/preload/ExcaliburService;

.field final synthetic val$checkCount:[I

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/preload/ExcaliburService;[ILandroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/preload/ExcaliburService;

    .line 230
    iput-object p1, p0, Lcom/alipay/mobile/quinox/preload/ExcaliburService$2;->this$0:Lcom/alipay/mobile/quinox/preload/ExcaliburService;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/preload/ExcaliburService$2;->val$checkCount:[I

    iput-object p3, p0, Lcom/alipay/mobile/quinox/preload/ExcaliburService$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "ExcaliburService"

    .line 234
    iget-object v1, p0, Lcom/alipay/mobile/quinox/preload/ExcaliburService$2;->val$checkCount:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 235
    aget v3, v1, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 237
    iget-object v1, p0, Lcom/alipay/mobile/quinox/preload/ExcaliburService$2;->this$0:Lcom/alipay/mobile/quinox/preload/ExcaliburService;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v3, 0x0

    move-object v5, v3

    .line 238
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    move-object v5, v1

    if-eqz v1, :cond_1

    .line 239
    const/4 v1, 0x0

    .line 241
    .local v1, "notifications":[Landroid/service/notification/StatusBarNotification;
    :try_start_0
    invoke-virtual {v5}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v6

    .line 249
    goto :goto_0

    .line 242
    :catchall_0
    move-exception v6

    .line 248
    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_1

    .line 252
    :try_start_1
    array-length v6, v1

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 253
    .local v3, "notification":Landroid/service/notification/StatusBarNotification;
    move-object v3, v7

    if-eqz v7, :cond_0

    .line 254
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/mobile/quinox/preload/ExcaliburService$2;->this$0:Lcom/alipay/mobile/quinox/preload/ExcaliburService;

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 255
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    const v8, 0xabc666

    if-ne v7, v8, :cond_0

    .line 256
    const-string v2, "notification occur, don\'t do this!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Lcom/alipay/mobile/quinox/preload/ExcaliburService$2;->this$0:Lcom/alipay/mobile/quinox/preload/ExcaliburService;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->stopForeground(Z)V

    .line 260
    iget-object v2, p0, Lcom/alipay/mobile/quinox/preload/ExcaliburService$2;->this$0:Lcom/alipay/mobile/quinox/preload/ExcaliburService;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->stopSelf()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 262
    return-void

    .line 252
    .end local v3    # "notification":Landroid/service/notification/StatusBarNotification;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 267
    :catchall_1
    move-exception v2

    .line 268
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    nop

    .line 272
    .end local v1    # "notifications":[Landroid/service/notification/StatusBarNotification;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/preload/ExcaliburService$2;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    :cond_2
    return-void
.end method
