.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$8;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->reportMultiProcessAutoFallback(Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isLaunchFailed:Z

.field final synthetic val$preferences:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;


# direct methods
.method constructor <init>(ZLcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;)V
    .locals 0

    .line 979
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$8;->val$isLaunchFailed:Z

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$8;->val$preferences:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 982
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$8;->val$isLaunchFailed:Z

    const-string v1, "count"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$8;->val$preferences:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 983
    .local v0, "pageStartUnCalledCount":I
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$8;->val$preferences:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string v4, "launch_failed"

    invoke-virtual {v3, v4, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 984
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$8;->val$preferences:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v3, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putInt(Ljava/lang/String;I)Z

    .line 985
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$8;->val$preferences:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    sget-object v2, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    const-string v3, "ucversion"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 986
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$8;->val$preferences:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    move-result v1

    .line 987
    .local v1, "status":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear auto fallback status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5UcService"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v2, "H5_UC_MULTI_PROCESS_AUTO_FALLBACK"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 989
    .local v2, "networkData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$8;->val$isLaunchFailed:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "launchFailed"

    invoke-virtual {v3, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 990
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "pageStartUnCalledCount"

    invoke-virtual {v3, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 991
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->addCommonInfoForMultiProcess(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 992
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 993
    return-void
.end method
