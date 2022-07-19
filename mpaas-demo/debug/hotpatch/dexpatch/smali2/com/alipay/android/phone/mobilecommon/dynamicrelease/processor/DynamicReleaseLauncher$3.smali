.class Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;
.super Ljava/lang/Object;
.source "DynamicReleaseLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->start(Landroid/os/Bundle;ILcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

.field final synthetic val$callback:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;

.field final synthetic val$clientPosition:Ljava/lang/String;

.field final synthetic val$resIds:Ljava/util/List;

.field final synthetic val$token:I

.field final synthetic val$when:I


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;ILjava/util/List;ILjava/lang/String;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    .line 227
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    iput p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->val$when:I

    iput-object p3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->val$resIds:Ljava/util/List;

    iput p4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->val$token:I

    iput-object p5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->val$clientPosition:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->val$callback:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 230
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;-><init>()V

    const/4 v1, 0x0

    .line 231
    .local v1, "requestInfo":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;
    move-object v1, v0

    iget v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->val$when:I

    iput v2, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->a:I

    .line 232
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->d:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->access$200(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    move-result-object v0

    iget v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->val$when:I

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getTypes(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->c:Ljava/util/List;

    .line 233
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->val$resIds:Ljava/util/List;

    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->b:Ljava/util/List;

    .line 234
    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->val$token:I

    iput v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->e:I

    .line 235
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->val$clientPosition:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->d:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->f:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->access$300(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;)Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->val$token:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->d:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->access$200(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->val$callback:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;

    # invokes: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->a(Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Z
    invoke-static {v0, v2, v1, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->access$400(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Z

    move-result v0

    .line 238
    .local v0, "bRet":Z
    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->f:Ljava/util/Map;
    invoke-static {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->access$300(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;)Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->val$token:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    if-nez v0, :cond_0

    .line 246
    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->d:Landroid/content/Context;
    invoke-static {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->access$200(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/d;->a(Landroid/content/Context;Z)V

    .line 248
    :cond_0
    return-void
.end method
