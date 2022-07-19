.class public interface abstract Lcom/alipay/mobile/common/logging/api/LogContext;
.super Ljava/lang/Object;
.source "LogContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;
    }
.end annotation


# static fields
.field public static final ABI_ARM64_V8A:Ljava/lang/String; = "arm64-v8a"

.field public static final ABI_ARMEABI:Ljava/lang/String; = "armeabi"

.field public static final ABI_ARMEABI_V7A:Ljava/lang/String; = "armeabi-v7a"

.field public static final ABI_MIPS:Ljava/lang/String; = "mips"

.field public static final ABI_MIPS_64:Ljava/lang/String; = "mips64"

.field public static final ABI_X86:Ljava/lang/String; = "x86"

.field public static final ABI_X86_64:Ljava/lang/String; = "x86_64"

.field public static final ACTION_DYNAMIC_RELEASE:Ljava/lang/String; = ".monitor.action.DYNAMIC_RELEASE"

.field public static final ACTION_MONITOR_COMMAND:Ljava/lang/String; = ".monitor.command"

.field public static final ACTION_TRACE_NATIVECRASH:Ljava/lang/String; = ".monitor.action.TRACE_NATIVE_CRASH"

.field public static final ACTION_UPDATE_LOG_CONTEXT:Ljava/lang/String; = ".monitor.action.UPDATE_LOG_CONTEXT"

.field public static final ACTION_UPDATE_LOG_CONTEXT_BATCH:Ljava/lang/String; = ".monitor.action.UPDATE_LOG_CONTEXT_BATCH"

.field public static final ACTION_UPDATE_LOG_STRATEGY:Ljava/lang/String; = ".monitor.action.UPDATE_LOG_STRATEGY"

.field public static final ACTION_UPLOAD_MDAPLOG:Ljava/lang/String; = ".monitor.action.upload.mdaplog"

.field public static final CLIENT_ENVENT_CLIENTLAUNCH:Ljava/lang/String; = "ClientEvent_ClientLaunch"

.field public static final CLIENT_ENVENT_CLIENTQUIT:Ljava/lang/String; = "ClientEvent_ClientQuit"

.field public static final CLIENT_ENVENT_FINISH_FIRST_FRAME:Ljava/lang/String; = "ClientEvent_FinishFirstFrame"

.field public static final CLIENT_ENVENT_GOTOFOREGROUND:Ljava/lang/String; = "ClientEvent_GotoForeground"

.field public static final CLIENT_ENVENT_PAGELAUNCH:Ljava/lang/String; = "ClientEvent_PageLaunch"

.field public static final CLIENT_ENVENT_PERIODCHECK:Ljava/lang/String; = "periodCheck"

.field public static final CLIENT_ENVENT_SWITCHPAGE:Ljava/lang/String; = "switchPage"

.field public static final ENVENT_BUGREPORT:Ljava/lang/String; = "bugReport"

.field public static final ENVENT_DUMPLOGTOSD:Ljava/lang/String; = "dumpLogToSD"

.field public static final ENVENT_GOTOBACKGROUND:Ljava/lang/String; = "gotoBackground"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ENVENT_SUBAPPRESUME:Ljava/lang/String; = "subappResume"

.field public static final ENVENT_SUBAPPSTART:Ljava/lang/String; = "subappStart"

.field public static final ENVENT_USERLOGIN:Ljava/lang/String; = "userLogin"

.field public static final ENVENT_VIEWSWITCH:Ljava/lang/String; = "viewSwitch"

.field public static final IS_DANGEROUS_UPLOAD:Ljava/lang/String; = "isDangerousUpload"

.field public static final IS_DEGRADE_UPLOAD:Ljava/lang/String; = "isDegradeUpload"

.field public static final IS_MERGE_UPLOAD:Ljava/lang/String; = "isMergeUpload"

.field public static final LOCAL_STORAGE_ACTIONDESC:Ljava/lang/String; = "actionDesc"

.field public static final LOCAL_STORAGE_ACTIONID:Ljava/lang/String; = "actionID"

.field public static final LOCAL_STORAGE_ACTIONTIMESTAMP:Ljava/lang/String; = "actionTimestamp"

.field public static final LOCAL_STORAGE_ACTIONTOKEN:Ljava/lang/String; = "actionToken"

.field public static final LOCAL_STORAGE_REFER:Ljava/lang/String; = "actionRefer"

.field public static final LOG_HOST_CONFIG_SP:Ljava/lang/String; = "LoggingUrlConfig"

.field public static final LOG_HOST_CONFIG_SP_DISABLE_HTTPS:Ljava/lang/String; = "LogUploadDisableHttps"

.field public static final LOG_HOST_CONFIG_SP_DISABLE_HTTPS_TIME:Ljava/lang/String; = "LogUploadDisableHttpsTime"

.field public static final LOG_SWITCH_MDAP_CORE:Ljava/lang/String; = "switch_mdap_core"

.field public static final MAIN_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.alipay.mobile.common.logging.process.LogServiceInMainProcess"

.field public static final NEED_MOVE:Ljava/lang/String; = "needMove"

.field public static final PARAM_KLOG_TRACEID_KEY:Ljava/lang/String; = "kLogTraceIdKey"

.field public static final PERFORMANCE_SCORE_ENDURE:I = 0x7dd

.field public static final PERFORMANCE_SCORE_ENDURE_2013:I = 0x7dd

.field public static final PERFORMANCE_SCORE_ENDURE_2014:I = 0x7de

.field public static final PERFORMANCE_SCORE_ENDURE_2015:I = 0x7df

.field public static final PUSH_LOG_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.alipay.mobile.common.logging.process.LogServiceInPushProcess"

.field public static final PUSH_RECEIVER_CLASS_NAME:Ljava/lang/String; = "com.alipay.mobile.logmonitor.ClientMonitorWakeupReceiver"

.field public static final PUSH_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.alipay.mobile.logmonitor.ClientMonitorService"

.field public static final RELEASETYPE_DEV:Ljava/lang/String; = "dev"

.field public static final RELEASETYPE_RC:Ljava/lang/String; = "rc"

.field public static final RELEASETYPE_RCPRE:Ljava/lang/String; = "rcpre"

.field public static final RELEASETYPE_RELEASE:Ljava/lang/String; = "release"

.field public static final RELEASETYPE_TEST:Ljava/lang/String; = "test"

.field public static final RELEASETYPE_TESTPRE:Ljava/lang/String; = "testpre"

.field public static final STORAGE_APPID:Ljava/lang/String; = "appID"

.field public static final STORAGE_LOGCATEGORY_UPLOAD_PERFIX:Ljava/lang/String; = "updateSize_"

.field public static final STORAGE_PAGESERIAL:Ljava/lang/String; = "pageSerial"

.field public static final STORAGE_REFVIEWID:Ljava/lang/String; = "refViewID"

.field public static final STORAGE_VIEWID:Ljava/lang/String; = "viewID"

.field public static final SYNC_ALL_LOG:Ljava/lang/String; = "syncAllLog"

.field public static final TOOLS_RECEIVER_CLASS_NAME:Ljava/lang/String; = "com.alipay.mobile.common.logging.process.LogReceiverInToolsProcess"

.field public static final TOOLS_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.alipay.mobile.common.logging.process.LogServiceInToolsProcess"


# virtual methods
.method public abstract adjustRequestSpanByNetNotMatch()V
.end method

.method public abstract adjustRequestSpanByReceived()V
.end method

.method public abstract adjustRequestSpanByUploadFail()V
.end method

.method public abstract adjustRequestSpanByZipFail()V
.end method

.method public abstract adjustUploadCoreByCategoryDirectly(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract appendFulllinkLog(Ljava/lang/Runnable;)V
.end method

.method public abstract appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
.end method

.method public abstract backupCurrentFile(Ljava/lang/String;Z)V
.end method

.method public abstract commitExtrasToUpdate()V
.end method

.method public abstract flush(Ljava/lang/String;Z)V
.end method

.method public abstract flush(Ljava/lang/String;ZLandroid/os/Bundle;)V
.end method

.method public abstract flush(Z)V
.end method

.method public abstract getAbtestInfoGetter()Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;
.end method

.method public abstract getApkUniqueId()Ljava/lang/String;
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getBehavorLogListener()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;
.end method

.method public abstract getBirdNestVersion()Ljava/lang/String;
.end method

.method public abstract getBizExternParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBundleVersion()Ljava/lang/String;
.end method

.method public abstract getChannelId()Ljava/lang/String;
.end method

.method public abstract getChannelProperties()Ljava/util/Properties;
.end method

.method public abstract getClientId()Ljava/lang/String;
.end method

.method public abstract getClientStatus(Z)Ljava/lang/String;
.end method

.method public abstract getClientStatus(ZZLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getContextParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCurrentLoggingInfo()Landroid/os/Parcelable;
.end method

.method public abstract getCurrentPageId()Ljava/lang/String;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDevicePerformanceScore()I
.end method

.method public abstract getDevicePerformanceScoreNew()Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;
.end method

.method public abstract getHotpatchBundleVersion()Ljava/lang/String;
.end method

.method public abstract getHotpatchDesc()Ljava/lang/String;
.end method

.method public abstract getHotpatchVersion()Ljava/lang/String;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getLocalParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLogAppenderistener()Lcom/alipay/mobile/common/logging/api/LogAppenderistener;
.end method

.method public abstract getLogCustomerControl()Lcom/alipay/mobile/common/logging/api/LogCustomerControl;
.end method

.method public abstract getLogDAUTracker()Lcom/alipay/mobile/common/logging/api/LogDAUTracker;
.end method

.method public abstract getLogEncryptClient()Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;
.end method

.method public abstract getLogHost()Ljava/lang/String;
.end method

.method public abstract getLogStrategyInfos()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLogUploadRpcClient()Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;
.end method

.method public abstract getMetDsLogHost()Ljava/lang/String;
.end method

.method public abstract getMpaasBaseline()Ljava/lang/String;
.end method

.method public abstract getMpaasMode()Ljava/lang/String;
.end method

.method public abstract getNetworkInfoGetter()Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;
.end method

.method public abstract getPackageId()Ljava/lang/String;
.end method

.method public abstract getProductABI()Ljava/lang/String;
.end method

.method public abstract getProductABIBit()Ljava/lang/String;
.end method

.method public abstract getProductId()Ljava/lang/String;
.end method

.method public abstract getProductVersion()Ljava/lang/String;
.end method

.method public abstract getReleaseCode()Ljava/lang/String;
.end method

.method public abstract getReleaseType()Ljava/lang/String;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSourceId()Ljava/lang/String;
.end method

.method public abstract getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;
.end method

.method public abstract getStorageParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getToolsUploadInterceptor()Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;
.end method

.method public abstract getTraceLoggerInterceptor()Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getUserSessionId()Ljava/lang/String;
.end method

.method public abstract getVituralUserId()Ljava/lang/String;
.end method

.method public abstract isCertificationSwitchOff()Z
.end method

.method public abstract isDisableToolsProcess()Z
.end method

.method public abstract isEnableTrafficLimit()Z
.end method

.method public abstract isLogNeedEncrypt()Z
.end method

.method public abstract isLogSwitchOff()Z
.end method

.method public abstract isLowEndDevice()Z
.end method

.method public abstract isPositiveDiagnose()Z
.end method

.method public abstract isPrintTraceLogRelease()Z
.end method

.method public abstract isSupport32()Z
.end method

.method public abstract isSupport64()Z
.end method

.method public abstract isTrafficMonitorEnabled()Z
.end method

.method public abstract isZipAndSevenZip()Z
.end method

.method public abstract notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract putBizExternParams(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putContextParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putLocalParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract refreshSessionId()V
.end method

.method public abstract removeContextParam(Ljava/lang/String;)V
.end method

.method public abstract removeLocalParam(Ljava/lang/String;)V
.end method

.method public abstract resetExtrasToSet()V
.end method

.method public abstract resetLogHost()V
.end method

.method public abstract revertRequestSpanToNormal()V
.end method

.method public abstract runningBit()I
.end method

.method public abstract setAbtestInfoGetter(Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;)V
.end method

.method public abstract setApkUniqueId(Ljava/lang/String;)V
.end method

.method public abstract setBehavorLogListener(Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;)V
.end method

.method public abstract setBirdNestVersion(Ljava/lang/String;)V
.end method

.method public abstract setBirdNestVersionNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setBundleVersion(Ljava/lang/String;)V
.end method

.method public abstract setBundleVersionNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setChannelId(Ljava/lang/String;)V
.end method

.method public abstract setChannelIdNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setClientId(Ljava/lang/String;)V
.end method

.method public abstract setClientIdNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setCurrentLoggingInfo(Landroid/os/Parcelable;)V
.end method

.method public abstract setCurrentPageId(Ljava/lang/String;)V
.end method

.method public abstract setDeviceId(Ljava/lang/String;)V
.end method

.method public abstract setDeviceIdNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setHotpatchBundleVersion(Ljava/lang/String;)V
.end method

.method public abstract setHotpatchBundleVersionNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setHotpatchDesc(Ljava/lang/String;)V
.end method

.method public abstract setHotpatchDescNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setHotpatchVersion(Ljava/lang/String;)V
.end method

.method public abstract setHotpatchVersionNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setLanguage(Ljava/lang/String;)V
.end method

.method public abstract setLanguageNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setLogAppenderistener(Lcom/alipay/mobile/common/logging/api/LogAppenderistener;)V
.end method

.method public abstract setLogCustomerControl(Lcom/alipay/mobile/common/logging/api/LogCustomerControl;)V
.end method

.method public abstract setLogDAUTracker(Lcom/alipay/mobile/common/logging/api/LogDAUTracker;)V
.end method

.method public abstract setLogEncryptClient(Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;)V
.end method

.method public abstract setLogHost(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLogHostNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setLogNeedEncrypt(Ljava/lang/String;)V
.end method

.method public abstract setLogNeedEncryptNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setLogUploadRpcClient(Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;)V
.end method

.method public abstract setMaxLogSize(I)V
.end method

.method public abstract setMpaasMode(Ljava/lang/String;)V
.end method

.method public abstract setMpaasModeNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setNetworkInfoGetter(Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;)V
.end method

.method public abstract setPackageId(Ljava/lang/String;)V
.end method

.method public abstract setPackageIdNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setProductId(Ljava/lang/String;)V
.end method

.method public abstract setProductIdNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setProductVersion(Ljava/lang/String;)V
.end method

.method public abstract setProductVersionNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setReleaseCode(Ljava/lang/String;)V
.end method

.method public abstract setReleaseCodeNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setReleaseType(Ljava/lang/String;)V
.end method

.method public abstract setReleaseTypeNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setSourceId(Ljava/lang/String;)V
.end method

.method public abstract setSpmMonitor(Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;)V
.end method

.method public abstract setToolsUploadInterceptor(Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;)V
.end method

.method public abstract setTraceLoggerInterceptor(Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;)V
.end method

.method public abstract setUserId(Ljava/lang/String;)V
.end method

.method public abstract setUserIdNoCommit(Ljava/lang/String;)V
.end method

.method public abstract setUserSessionId(Ljava/lang/String;)V
.end method

.method public abstract setVituralUserId(Ljava/lang/String;)V
.end method

.method public abstract setupExceptionHandler(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;I)V
.end method

.method public abstract syncAppendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
.end method

.method public abstract syncLogConfig(Ljava/lang/String;)V
.end method

.method public abstract takedownExceptionHandler()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract updateLogStrategyCfg(Ljava/lang/String;)V
.end method

.method public abstract upload(Ljava/lang/String;)V
.end method

.method public abstract upload(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract upload(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract uploadAfterSync(Ljava/lang/String;)V
.end method

.method public abstract uploadAfterSync(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract uploadAfterSync(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method
