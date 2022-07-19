.class public interface abstract Lcom/alipay/mobile/common/logging/api/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"


# static fields
.field public static final ALIAS_EXT:Ljava/lang/String; = "ext"

.field public static final ALIAS_LITE:Ljava/lang/String; = "lite"

.field public static final ALIAS_MAIN:Ljava/lang/String; = "main"

.field public static final ALIAS_PUSH:Ljava/lang/String; = "push"

.field public static final ALIAS_TOOLS:Ljava/lang/String; = "tools"

.field public static final ALIAS_UC_SANDBOX:Ljava/lang/String; = "sandboxed_"

.field public static final ALIAS_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final CLIENT_TRANSACTION:Ljava/lang/String; = "ClientTransaction"

.field public static final LAUNCH_ACTIVITY_ITEM:Ljava/lang/String; = "LaunchActivityItem"

.field public static final REASON_HUAWEI_PRELOAD:Ljava/lang/String; = "HuaweiPreload"

.field public static final RECORD_ACTIVITY:Ljava/lang/String; = "ActivityClientRecord"

.field public static final RECORD_APP_BIND:Ljava/lang/String; = "AppBindData"

.field public static final RECORD_BACKUP_AGENT:Ljava/lang/String; = "CreateBackupAgentData"

.field public static final RECORD_NEW_INTENT:Ljava/lang/String; = "NewIntentData"

.field public static final RECORD_PROVIDER:Ljava/lang/String; = "ProviderClientRecord"

.field public static final RECORD_RECEIVER:Ljava/lang/String; = "ReceiverData"

.field public static final RECORD_SERVICE_ARGS:Ljava/lang/String; = "ServiceArgsData"

.field public static final RECORD_SERVICE_BIND:Ljava/lang/String; = "BindServiceData"

.field public static final RECORD_SERVICE_CREATE:Ljava/lang/String; = "CreateServiceData"

.field public static final SR_ACTION_NAME:Ljava/lang/String; = "ActionName"

.field public static final SR_APP_ID:Ljava/lang/String; = "TARGETAPPID"

.field public static final SR_BY_ACTIVITY:Ljava/lang/String; = "ByActivity"

.field public static final SR_COMPONENT_NAME:Ljava/lang/String; = "ComponentName"

.field public static final SR_RECORD_TYPE:Ljava/lang/String; = "RecordType"

.field public static final SR_TO_STRING:Ljava/lang/String; = "toString"


# virtual methods
.method public abstract getExtProcessId()I
.end method

.method public abstract getExtProcessName()Ljava/lang/String;
.end method

.method public abstract getExtProcessTag()Ljava/lang/String;
.end method

.method public abstract getMainProcessId()I
.end method

.method public abstract getMainProcessName()Ljava/lang/String;
.end method

.method public abstract getMainProcessTag()Ljava/lang/String;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getProcessAlias()Ljava/lang/String;
.end method

.method public abstract getProcessId()I
.end method

.method public abstract getProcessIdByName(Ljava/lang/String;)I
.end method

.method public abstract getProcessIdsByName(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProcessName()Ljava/lang/String;
.end method

.method public abstract getProcessNameById(I)Ljava/lang/String;
.end method

.method public abstract getProcessStartTime()J
.end method

.method public abstract getProcessTag()Ljava/lang/String;
.end method

.method public abstract getPushProcessId()I
.end method

.method public abstract getPushProcessName()Ljava/lang/String;
.end method

.method public abstract getPushProcessTag()Ljava/lang/String;
.end method

.method public abstract getStartupBundle()Landroid/os/Bundle;
.end method

.method public abstract getStartupData()Landroid/net/Uri;
.end method

.method public abstract getStartupReason()Ljava/util/Map;
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

.method public abstract getThreadId()I
.end method

.method public abstract getToolsProcessId()I
.end method

.method public abstract getToolsProcessName()Ljava/lang/String;
.end method

.method public abstract getToolsProcessTag()Ljava/lang/String;
.end method

.method public abstract getUserId()I
.end method

.method public abstract isExtProcess()Z
.end method

.method public abstract isExtProcessExist()Z
.end method

.method public abstract isIsolatedProcess()Z
.end method

.method public abstract isLiteProcess()Z
.end method

.method public abstract isMainProcess()Z
.end method

.method public abstract isMainProcessExist()Z
.end method

.method public abstract isPushProcess()Z
.end method

.method public abstract isPushProcessExist()Z
.end method

.method public abstract isSandboxProcess()Z
.end method

.method public abstract isStartupByAnyActivity()Z
.end method

.method public abstract isStartupByLauncherIcon()Z
.end method

.method public abstract isToolsProcess()Z
.end method

.method public abstract isToolsProcessExist()Z
.end method
