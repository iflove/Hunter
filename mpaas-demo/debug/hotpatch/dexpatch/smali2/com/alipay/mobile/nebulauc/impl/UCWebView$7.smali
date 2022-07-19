.class Lcom/alipay/mobile/nebulauc/impl/UCWebView$7;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 657
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$7;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 660
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "multi_process"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 662
    .local v0, "preferences":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    if-eqz v0, :cond_1

    .line 663
    const/4 v1, 0x0

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 664
    .local v1, "count":I
    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putInt(Ljava/lang/String;I)Z

    .line 665
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    move-result v2

    .line 666
    .local v2, "status":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pageStart uncalled times: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5UCWebView"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    sget v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sFallbackLimit:I

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_1

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sRenderProcessReady:Z
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$500()Z

    move-result v3

    if-nez v3, :cond_0

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sHasReportRenderProcessLaunchFailed:Z
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1000()Z

    move-result v3

    if-nez v3, :cond_1

    .line 668
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$7;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # invokes: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->reportPageStartUnCalled()V
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1100(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V

    .line 671
    .end local v1    # "count":I
    .end local v2    # "status":Z
    :cond_1
    return-void
.end method
