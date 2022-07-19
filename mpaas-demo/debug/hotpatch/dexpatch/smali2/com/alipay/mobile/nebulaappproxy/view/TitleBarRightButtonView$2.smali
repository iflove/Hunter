.class Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;
.super Ljava/lang/Object;
.source "TitleBarRightButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->setBadgeData(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    .line 363
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 366
    const-string v0, "_"

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "badgeType"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 367
    .local v1, "badgeType":I
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "unreadCount"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 368
    .local v2, "messageCount":I
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "latestMsgTime"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)J

    move-result-wide v3

    .line 370
    .local v3, "latestMsgTime":J
    if-lez v2, :cond_2

    .line 371
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "userId":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->n:Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$200(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->n:Ljava/lang/String;
    invoke-static {v7}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$200(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_titleBarOptionLatestClickTime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "key":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->n:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$200(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    .local v0, "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    const-string v7, ""

    move-object v8, v7

    .line 376
    .local v8, "temp":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 377
    :try_start_1
    invoke-virtual {v0, v6, v7}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 380
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 381
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 382
    cmp-long v7, v9, v3

    if-ltz v7, :cond_1

    .line 383
    const/4 v1, -0x1

    .line 384
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->p:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;
    invoke-static {v7}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$100(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;->hasCornerMarking()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_1

    .line 386
    return-void

    .line 391
    .end local v0    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .end local v5    # "userId":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "temp":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Throwable;
    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    const/4 v1, -0x1

    goto :goto_0

    .line 392
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, -0x1

    .line 397
    nop

    .line 399
    :goto_0
    move v0, v1

    .line 400
    .local v0, "badgeTypeCopy":I
    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;

    invoke-direct {v5, p0, v0, v2}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;II)V

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 441
    return-void
.end method
