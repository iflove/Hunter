.class Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullLogContext;
.super Ljava/lang/Object;
.source "LoggerFactory.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/LogContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/api/LoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullLogContext"
.end annotation


# instance fields
.field private a:Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    new-instance v0, Lcom/alipay/android/phone/wallet/spmtracker/NullSpmMonitor;

    invoke-direct {v0}, Lcom/alipay/android/phone/wallet/spmtracker/NullSpmMonitor;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullLogContext;->a:Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;

    .line 538
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullLogContext;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustRequestSpanByNetNotMatch()V
    .locals 0

    .line 1071
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1072
    return-void
.end method

.method public adjustRequestSpanByReceived()V
    .locals 0

    .line 1066
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1067
    return-void
.end method

.method public adjustRequestSpanByUploadFail()V
    .locals 0

    .line 1081
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1082
    return-void
.end method

.method public adjustRequestSpanByZipFail()V
    .locals 0

    .line 1076
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1077
    return-void
.end method

.method public adjustUploadCoreByCategoryDirectly(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 1218
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1219
    return-void
.end method

.method public appendFulllinkLog(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/Runnable;

    .line 646
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 647
    return-void
.end method

.method public appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 0
    .param p1, "logEvent"    # Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 636
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 637
    return-void
.end method

.method public backupCurrentFile(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "isBackupOthers"    # Z

    .line 581
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 582
    return-void
.end method

.method public commitExtrasToUpdate()V
    .locals 0

    .line 1031
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1032
    return-void
.end method

.method public flush(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .line 591
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 592
    return-void
.end method

.method public flush(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 596
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 597
    return-void
.end method

.method public flush(Z)V
    .locals 0
    .param p1, "sync"    # Z

    .line 586
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 587
    return-void
.end method

.method public getAbtestInfoGetter()Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;
    .locals 1

    .line 1190
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApkUniqueId()Ljava/lang/String;
    .locals 1

    .line 845
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 846
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 667
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 668
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBehavorLogListener()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;
    .locals 1

    .line 1179
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1180
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBirdNestVersion()Ljava/lang/String;
    .locals 1

    .line 833
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 834
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBizExternParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1136
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBundleVersion()Ljava/lang/String;
    .locals 1

    .line 827
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 828
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 703
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 704
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannelProperties()Ljava/util/Properties;
    .locals 1

    .line 1293
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1294
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 779
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 780
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientStatus(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isNativeCrash"    # Z

    .line 1054
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1055
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientStatus(ZZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "traceNativeCrashWhenBoot"    # Z
    .param p2, "isNativeCrash"    # Z
    .param p3, "exception"    # Ljava/lang/String;

    .line 1060
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1061
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContextParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 559
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 560
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentLoggingInfo()Landroid/os/Parcelable;
    .locals 1

    .line 1299
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1300
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPageId()Ljava/lang/String;
    .locals 1

    .line 773
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 774
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 785
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 786
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevicePerformanceScore()I
    .locals 1

    .line 1091
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1092
    const v0, 0x7fffffff

    return v0
.end method

.method public getDevicePerformanceScoreNew()Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;
    .locals 1

    .line 1097
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1098
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;->LOW:Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;

    return-object v0
.end method

.method public getHotpatchBundleVersion()Ljava/lang/String;
    .locals 1

    .line 821
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 822
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHotpatchDesc()Ljava/lang/String;
    .locals 1

    .line 815
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 816
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHotpatchVersion()Ljava/lang/String;
    .locals 1

    .line 809
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 810
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 791
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 792
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 575
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 576
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogAppenderistener()Lcom/alipay/mobile/common/logging/api/LogAppenderistener;
    .locals 1

    .line 1147
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogCustomerControl()Lcom/alipay/mobile/common/logging/api/LogCustomerControl;
    .locals 1

    .line 1238
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1239
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogDAUTracker()Lcom/alipay/mobile/common/logging/api/LogDAUTracker;
    .locals 1

    .line 1254
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1255
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogEncryptClient()Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;
    .locals 1

    .line 1212
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1213
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogHost()Ljava/lang/String;
    .locals 1

    .line 1042
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1043
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogStrategyInfos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;",
            ">;"
        }
    .end annotation

    .line 1168
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1169
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogUploadRpcClient()Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;
    .locals 1

    .line 1201
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetDsLogHost()Ljava/lang/String;
    .locals 1

    .line 1048
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1049
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMpaasBaseline()Ljava/lang/String;
    .locals 1

    .line 1316
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1317
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMpaasMode()Ljava/lang/String;
    .locals 1

    .line 1327
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1328
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkInfoGetter()Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;
    .locals 1

    .line 1265
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1266
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .line 839
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 840
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProductABI()Ljava/lang/String;
    .locals 1

    .line 733
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 734
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProductABIBit()Ljava/lang/String;
    .locals 1

    .line 739
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 740
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 721
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 722
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .line 727
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 728
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReleaseCode()Ljava/lang/String;
    .locals 1

    .line 715
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 716
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReleaseType()Ljava/lang/String;
    .locals 1

    .line 709
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 710
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 797
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 798
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 803
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 804
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;
    .locals 1

    .line 1228
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullLogContext;->a:Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    return-object v0
.end method

.method public getStorageParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 543
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 544
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToolsUploadInterceptor()Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;
    .locals 1

    .line 1287
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1288
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTraceLoggerInterceptor()Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;
    .locals 1

    .line 1276
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1277
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 761
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 762
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserSessionId()Ljava/lang/String;
    .locals 1

    .line 1113
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVituralUserId()Ljava/lang/String;
    .locals 1

    .line 767
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 768
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCertificationSwitchOff()Z
    .locals 1

    .line 1344
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1345
    const/4 v0, 0x0

    return v0
.end method

.method public isDisableToolsProcess()Z
    .locals 1

    .line 690
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableTrafficLimit()Z
    .locals 1

    .line 696
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 698
    const/4 v0, 0x0

    return v0
.end method

.method public isLogNeedEncrypt()Z
    .locals 1

    .line 1355
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1356
    const/4 v0, 0x0

    return v0
.end method

.method public isLogSwitchOff()Z
    .locals 1

    .line 1310
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1311
    const/4 v0, 0x0

    return v0
.end method

.method public isLowEndDevice()Z
    .locals 6

    .line 1121
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.alipay.mobile.common.logging.util.LowEndDeviceUtil"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1122
    const-string v2, "isLowEndDevice"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1123
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1124
    :catchall_0
    move-exception v1

    .line 1125
    return v0
.end method

.method public isPositiveDiagnose()Z
    .locals 1

    .line 678
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method public isPrintTraceLogRelease()Z
    .locals 1

    .line 1366
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1367
    const/4 v0, 0x0

    return v0
.end method

.method public isSupport32()Z
    .locals 1

    .line 746
    const/4 v0, 0x1

    return v0
.end method

.method public isSupport64()Z
    .locals 1

    .line 751
    const/4 v0, 0x0

    return v0
.end method

.method public isTrafficMonitorEnabled()Z
    .locals 1

    .line 1338
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1339
    const/4 v0, 0x0

    return v0
.end method

.method public isZipAndSevenZip()Z
    .locals 1

    .line 684
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 685
    const/4 v0, 0x0

    return v0
.end method

.method public notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventParam"    # Ljava/lang/Object;

    .line 673
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 674
    return-void
.end method

.method public putBizExternParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1131
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1132
    return-void
.end method

.method public putContextParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 549
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 550
    return-void
.end method

.method public putLocalParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 565
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 566
    return-void
.end method

.method public refreshSessionId()V
    .locals 0

    .line 906
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 907
    return-void
.end method

.method public removeContextParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 554
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 555
    return-void
.end method

.method public removeLocalParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 570
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 571
    return-void
.end method

.method public resetExtrasToSet()V
    .locals 0

    .line 1026
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1027
    return-void
.end method

.method public resetLogHost()V
    .locals 0

    .line 1163
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1164
    return-void
.end method

.method public revertRequestSpanToNormal()V
    .locals 0

    .line 1086
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1087
    return-void
.end method

.method public runningBit()I
    .locals 1

    .line 756
    const/16 v0, 0x20

    return v0
.end method

.method public setAbtestInfoGetter(Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;)V
    .locals 0
    .param p1, "abtestInfoGetter"    # Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;

    .line 1185
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1186
    return-void
.end method

.method public setApkUniqueId(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkUniqueId"    # Ljava/lang/String;

    .line 946
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 947
    return-void
.end method

.method public setBehavorLogListener(Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;

    .line 1174
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1175
    return-void
.end method

.method public setBirdNestVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "birdNestVersion"    # Ljava/lang/String;

    .line 936
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 937
    return-void
.end method

.method public setBirdNestVersionNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "birdNestVersion"    # Ljava/lang/String;

    .line 1016
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1017
    return-void
.end method

.method public setBundleVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleVersion"    # Ljava/lang/String;

    .line 931
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 932
    return-void
.end method

.method public setBundleVersionNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleVersion"    # Ljava/lang/String;

    .line 1011
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1012
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .line 851
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 852
    return-void
.end method

.method public setChannelIdNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .line 951
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 952
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .line 891
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 892
    return-void
.end method

.method public setClientIdNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .line 981
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 982
    return-void
.end method

.method public setCurrentLoggingInfo(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "loggingInfo"    # Landroid/os/Parcelable;

    .line 1305
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1306
    return-void
.end method

.method public setCurrentPageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageId"    # Ljava/lang/String;

    .line 886
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 887
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 896
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 897
    return-void
.end method

.method public setDeviceIdNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 986
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 987
    return-void
.end method

.method public setHotpatchBundleVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "hotpatchBundleVersion"    # Ljava/lang/String;

    .line 926
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 927
    return-void
.end method

.method public setHotpatchBundleVersionNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "hotpatchBundleVersion"    # Ljava/lang/String;

    .line 1006
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1007
    return-void
.end method

.method public setHotpatchDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "hotpatchDesc"    # Ljava/lang/String;

    .line 921
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 922
    return-void
.end method

.method public setHotpatchDescNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "hotpatchDesc"    # Ljava/lang/String;

    .line 1001
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1002
    return-void
.end method

.method public setHotpatchVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "hotpatchVersion"    # Ljava/lang/String;

    .line 916
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 917
    return-void
.end method

.method public setHotpatchVersionNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "hotpatchVersion"    # Ljava/lang/String;

    .line 996
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 997
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .line 901
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 902
    return-void
.end method

.method public setLanguageNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .line 991
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 992
    return-void
.end method

.method public setLogAppenderistener(Lcom/alipay/mobile/common/logging/api/LogAppenderistener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/common/logging/api/LogAppenderistener;

    .line 1142
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1143
    return-void
.end method

.method public setLogCustomerControl(Lcom/alipay/mobile/common/logging/api/LogCustomerControl;)V
    .locals 0
    .param p1, "logCustomerControl"    # Lcom/alipay/mobile/common/logging/api/LogCustomerControl;

    .line 1233
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1234
    return-void
.end method

.method public setLogDAUTracker(Lcom/alipay/mobile/common/logging/api/LogDAUTracker;)V
    .locals 0
    .param p1, "logDAUTracker"    # Lcom/alipay/mobile/common/logging/api/LogDAUTracker;

    .line 1249
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1250
    return-void
.end method

.method public setLogEncryptClient(Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;)V
    .locals 0
    .param p1, "logEncryptClient"    # Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;

    .line 1207
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1208
    return-void
.end method

.method public setLogHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "logHost"    # Ljava/lang/String;

    .line 1153
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1154
    return-void
.end method

.method public setLogHostNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "logHost"    # Ljava/lang/String;

    .line 1158
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1159
    return-void
.end method

.method public setLogNeedEncrypt(Ljava/lang/String;)V
    .locals 0
    .param p1, "logNeedEncrypt"    # Ljava/lang/String;

    .line 1350
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1351
    return-void
.end method

.method public setLogNeedEncryptNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "logNeedEncrypt"    # Ljava/lang/String;

    .line 1361
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1362
    return-void
.end method

.method public setLogUploadRpcClient(Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;)V
    .locals 0
    .param p1, "rpcClient"    # Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;

    .line 1196
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1197
    return-void
.end method

.method public setMaxLogSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 1244
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1245
    return-void
.end method

.method public setMpaasMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mpaasMode"    # Ljava/lang/String;

    .line 1322
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1323
    return-void
.end method

.method public setMpaasModeNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "mpaasMode"    # Ljava/lang/String;

    .line 1333
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1334
    return-void
.end method

.method public setNetworkInfoGetter(Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;)V
    .locals 0
    .param p1, "networkInfoGetter"    # Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;

    .line 1260
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1261
    return-void
.end method

.method public setPackageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageId"    # Ljava/lang/String;

    .line 941
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 942
    return-void
.end method

.method public setPackageIdNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageId"    # Ljava/lang/String;

    .line 1021
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1022
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .line 866
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 867
    return-void
.end method

.method public setProductIdNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .line 966
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 967
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "productVersion"    # Ljava/lang/String;

    .line 871
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 872
    return-void
.end method

.method public setProductVersionNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "productVersion"    # Ljava/lang/String;

    .line 971
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 972
    return-void
.end method

.method public setReleaseCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "releaseCode"    # Ljava/lang/String;

    .line 861
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 862
    return-void
.end method

.method public setReleaseCodeNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "releaseCode"    # Ljava/lang/String;

    .line 961
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 962
    return-void
.end method

.method public setReleaseType(Ljava/lang/String;)V
    .locals 0
    .param p1, "releaseType"    # Ljava/lang/String;

    .line 856
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 857
    return-void
.end method

.method public setReleaseTypeNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "releaseType"    # Ljava/lang/String;

    .line 956
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 957
    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceId"    # Ljava/lang/String;

    .line 911
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 912
    return-void
.end method

.method public setSpmMonitor(Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;)V
    .locals 0
    .param p1, "spmMonitor"    # Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    .line 1223
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1224
    return-void
.end method

.method public setToolsUploadInterceptor(Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;)V
    .locals 0
    .param p1, "toolsUploadInterceptor"    # Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;

    .line 1282
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1283
    return-void
.end method

.method public setTraceLoggerInterceptor(Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;)V
    .locals 0
    .param p1, "traceLoggerInterceptor"    # Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;

    .line 1271
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1272
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .line 876
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 877
    return-void
.end method

.method public setUserIdNoCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .line 976
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 977
    return-void
.end method

.method public setUserSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 1108
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1109
    return-void
.end method

.method public setVituralUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "vituralUserId"    # Ljava/lang/String;

    .line 881
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 882
    return-void
.end method

.method public setupExceptionHandler(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;I)V
    .locals 0
    .param p1, "callback"    # Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;
    .param p2, "flag"    # I

    .line 662
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 663
    return-void
.end method

.method public syncAppendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 0
    .param p1, "logEvent"    # Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 631
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 632
    return-void
.end method

.method public syncLogConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 1103
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1104
    return-void
.end method

.method public takedownExceptionHandler()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 657
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 658
    return-void
.end method

.method public traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "callStack"    # Ljava/lang/String;
    .param p3, "isBoot"    # Z

    .line 1036
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1037
    const/4 v0, 0x0

    return v0
.end method

.method public updateLogStrategyCfg(Ljava/lang/String;)V
    .locals 0
    .param p1, "cfg"    # Ljava/lang/String;

    .line 651
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 652
    return-void
.end method

.method public upload(Ljava/lang/String;)V
    .locals 0
    .param p1, "logCategory"    # Ljava/lang/String;

    .line 616
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 617
    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 621
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 622
    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 626
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 627
    return-void
.end method

.method public uploadAfterSync(Ljava/lang/String;)V
    .locals 0
    .param p1, "logCategory"    # Ljava/lang/String;

    .line 601
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 602
    return-void
.end method

.method public uploadAfterSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "uploadUrl"    # Ljava/lang/String;

    .line 606
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 607
    return-void
.end method

.method public uploadAfterSync(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "uploadUrl"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 611
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 612
    return-void
.end method
