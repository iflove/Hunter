.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;
.super Ljava/lang/Object;
.source "HotpatchProcessor.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;


# static fields
.field public static final HOTPACH_CACHE:Ljava/lang/String; = "hotpach.cache"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;

    .line 98
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "patchPath"    # Ljava/lang/String;

    .line 906
    const/4 v0, 0x0

    .line 908
    .local v0, "hotpatchBundleVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getInstance()Lcom/alipay/euler/andfix/AlipayAndfixManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getPatchManager()Lcom/alipay/euler/andfix/patch/PatchManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->getPatchFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 909
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 910
    const-string v1, ","

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 914
    :cond_0
    goto :goto_0

    .line 912
    :catchall_0
    move-exception v1

    .line 913
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "DynamicRelease"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 915
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 916
    const-string v0, "-"

    .line 918
    :cond_1
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "curHotPatchDesc"    # Ljava/lang/String;
    .param p1, "newHotPatchDesc"    # Ljava/lang/String;

    .line 877
    if-nez p1, :cond_0

    .line 878
    const-string p1, ""

    .line 880
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 881
    const/4 v0, 0x0

    .line 882
    .local v0, "hasRollback":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    .local v1, "rollbackDescBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 884
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 885
    .local v3, "oldDesc":C
    const/16 v4, 0x30

    .line 886
    .local v4, "newDesc":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 887
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 890
    :cond_1
    const/4 v5, 0x0

    const/16 v6, 0x30

    if-ne v6, v4, :cond_2

    if-eq v4, v3, :cond_2

    .line 891
    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 892
    const/4 v0, 0x1

    goto :goto_1

    .line 894
    :cond_2
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 883
    .end local v3    # "oldDesc":C
    .end local v4    # "newDesc":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 897
    .end local v2    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 898
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 902
    .end local v0    # "hasRollback":Z
    .end local v1    # "rollbackDescBuilder":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;

    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static cleanMonitorXXRecord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trigger"    # Ljava/lang/String;

    .line 598
    const-string v0, "clientVersion"

    const-string v1, "fromFile"

    const-string v2, "issueDesc"

    const-string v3, "andfix"

    const-string v4, "dexpatch"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cleanMonitorXXRecord from trigger:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DynamicRelease"

    invoke-static {v6, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 601
    .local v5, "sp":Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    .line 602
    .local v7, "needClean":Z
    invoke-interface {v5, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "N/A"

    if-eqz v8, :cond_0

    .line 603
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "cleanMonitorXXRecord got KEY_DEXPATCH:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/4 v7, 0x1

    .line 606
    :cond_0
    invoke-interface {v5, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 607
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "cleanMonitorXXRecord got KEY_ANDFIX:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v3, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const/4 v7, 0x1

    .line 610
    :cond_1
    invoke-interface {v5, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 611
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "cleanMonitorXXRecord got KEY_ISSUEDESC:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/4 v7, 0x1

    .line 614
    :cond_2
    invoke-interface {v5, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 615
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "cleanMonitorXXRecord got KEY_FROM_FILE:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const/4 v7, 0x1

    .line 618
    :cond_3
    invoke-interface {v5, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 619
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "cleanMonitorXXRecord got KEY_CLIENT_VERSION:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v0, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const/4 v7, 0x1

    .line 622
    :cond_4
    if-eqz v7, :cond_5

    .line 623
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cleanMonitorXXRecord do clean for trigger:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 626
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cleanMonitorXXRecord no need clean for trigger:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 630
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .end local v7    # "needClean":Z
    return-void

    .line 628
    :catchall_0
    move-exception v0

    .line 629
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "cleanMonitorXXRecord"

    invoke-static {v6, v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 631
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static clearHotpatchState(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "hotpach.cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 102
    .local v1, "store":Ljava/io/File;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearHotpatchState() : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DynamicRelease"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 108
    :cond_0
    return-void
.end method

.method public static monitorAndfixSuccess(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 32
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 754
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v7

    .line 756
    .local v7, "isMainProcess":Z
    const-string v0, "DynamicRelease"

    const/4 v8, 0x0

    move-object/from16 v9, p0

    invoke-virtual {v9, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v10, 0x0

    move-object v2, v10

    .line 757
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v11, v1

    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .local v11, "sp":Landroid/content/SharedPreferences;
    const-string v12, "andfix"

    invoke-interface {v1, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 758
    invoke-interface {v11, v12, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 759
    .local v15, "newHotpatchVersion":Ljava/lang/String;
    const-string v14, "issueDesc"

    const-string v1, ""

    invoke-interface {v11, v14, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 760
    .local v13, "newHotpatchDesc":Ljava/lang/String;
    const-string v6, "fromFile"

    const-string v1, "-"

    invoke-interface {v11, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 761
    .local v5, "newHotpatchBundleVersion":Ljava/lang/String;
    const-string v4, "clientVersion"

    const-string/jumbo v2, "unknown"

    invoke-interface {v11, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "targetClientVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchVersion()Ljava/lang/String;

    move-result-object v2

    .line 763
    .local v2, "curHotpatchVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchDesc()Ljava/lang/String;

    move-result-object v8

    .line 764
    .local v8, "curHotpatchDesc":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchBundleVersion()Ljava/lang/String;

    move-result-object v10

    .line 765
    .local v10, "curHotpatchBundleVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v9

    .line 766
    .local v9, "curClientVersion":Ljava/lang/String;
    move-object/from16 v23, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v24, v6

    const-string/jumbo v6, "monitorAndfixSuccess() newHotpatchVersion="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " vs curHotpatchVersion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "newHotpatchDesc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " vs curHotpatchDesc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "newHotpatchBundleVersion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " vs curHotpatchBundleVersion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " targetClientVersion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " vs curClientVersion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    .line 773
    .local v6, "logParams":Ljava/util/Map;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    invoke-interface {v6, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :cond_0
    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 778
    const-string v0, "0"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v25, v3

    .end local v3    # "targetClientVersion":Ljava/lang/String;
    .local v25, "targetClientVersion":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v4, :cond_6

    .line 779
    if-nez p1, :cond_3

    .line 781
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchVersion(Ljava/lang/String;)V

    .line 782
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchDesc(Ljava/lang/String;)V

    .line 783
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchBundleVersion(Ljava/lang/String;)V

    .line 784
    if-eqz v7, :cond_2

    .line 786
    invoke-static {v8, v13}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 v16, v4

    .line 787
    .local v16, "rollbackDesc":Ljava/lang/String;
    move-object v4, v1

    .end local v16    # "rollbackDesc":Ljava/lang/String;
    .local v4, "rollbackDesc":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 788
    invoke-interface {v6, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 790
    :cond_1
    invoke-interface {v6, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :goto_0
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const-string v20, "Start|Success"

    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v21, v6

    invoke-static/range {v16 .. v21}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 795
    .local v0, "rollbackEntities":Ljava/util/List;
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    invoke-direct/range {v16 .. v22}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v17, v16

    .line 797
    .local v17, "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    move-object/from16 v18, v1

    .end local v17    # "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .local v18, "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    invoke-virtual {v1, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->setQuickRollback(I)V

    .line 798
    nop

    .end local v18    # "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .local v1, "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    invoke-static/range {p0 .. p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    move-result-object v3

    sget-object v17, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .end local v1    # "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .restart local v18    # "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v4

    .end local v4    # "rollbackDesc":Ljava/lang/String;
    .local v17, "rollbackDesc":Ljava/lang/String;
    sget-object v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->SUCCESS:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    move-object/from16 v19, v5

    move-object/from16 v5, v16

    .end local v5    # "newHotpatchBundleVersion":Ljava/lang/String;
    .local v19, "newHotpatchBundleVersion":Ljava/lang/String;
    invoke-virtual {v3, v1, v0, v5, v4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->handleResult(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Parcelable;)V

    .line 801
    .end local v0    # "rollbackEntities":Ljava/util/List;
    .end local v17    # "rollbackDesc":Ljava/lang/String;
    .end local v18    # "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    move-object/from16 v26, v2

    move-object/from16 v28, v15

    move-object/from16 v29, v19

    move-object/from16 v27, v23

    move-object v15, v6

    move-object/from16 v23, v10

    move-object/from16 v30, v24

    move-object/from16 v24, v9

    move-object/from16 v9, v30

    move-object/from16 v31, v14

    move-object v14, v13

    move-object/from16 v13, v31

    goto/16 :goto_3

    .line 784
    .end local v19    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v5    # "newHotpatchBundleVersion":Ljava/lang/String;
    :cond_2
    move-object/from16 v19, v5

    .end local v5    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v19    # "newHotpatchBundleVersion":Ljava/lang/String;
    move-object/from16 v26, v2

    move-object/from16 v28, v15

    move-object/from16 v29, v19

    move-object/from16 v27, v23

    move-object v15, v6

    move-object/from16 v23, v10

    move-object/from16 v30, v24

    move-object/from16 v24, v9

    move-object/from16 v9, v30

    move-object/from16 v31, v14

    move-object v14, v13

    move-object/from16 v13, v31

    goto/16 :goto_3

    .line 804
    .end local v19    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v5    # "newHotpatchBundleVersion":Ljava/lang/String;
    :cond_3
    move-object/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v19    # "newHotpatchBundleVersion":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 806
    invoke-static {v8, v13}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v5

    .line 807
    .local v3, "rollbackDesc":Ljava/lang/String;
    move-object v5, v1

    .end local v3    # "rollbackDesc":Ljava/lang/String;
    .local v5, "rollbackDesc":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 808
    invoke-interface {v6, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 810
    :cond_4
    invoke-interface {v6, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    :goto_1
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "Start|Fail"

    move-object v1, v2

    move-object/from16 v26, v2

    .end local v2    # "curHotpatchVersion":Ljava/lang/String;
    .local v26, "curHotpatchVersion":Ljava/lang/String;
    move-object/from16 v27, v23

    move-object/from16 v16, v5

    move-object/from16 v28, v19

    .end local v5    # "rollbackDesc":Ljava/lang/String;
    .end local v19    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v16    # "rollbackDesc":Ljava/lang/String;
    .local v28, "newHotpatchBundleVersion":Ljava/lang/String;
    move-object/from16 v5, p1

    move-object/from16 v23, v6

    move-object/from16 v30, v24

    move-object/from16 v24, v9

    move-object/from16 v9, v30

    .end local v6    # "logParams":Ljava/util/Map;
    .end local v9    # "curClientVersion":Ljava/lang/String;
    .local v23, "logParams":Ljava/util/Map;
    .local v24, "curClientVersion":Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 813
    .end local v16    # "rollbackDesc":Ljava/lang/String;
    move-object/from16 v29, v28

    move-object/from16 v28, v15

    move-object/from16 v15, v23

    move-object/from16 v23, v10

    move-object/from16 v30, v14

    move-object v14, v13

    move-object/from16 v13, v30

    goto/16 :goto_3

    .line 804
    .end local v23    # "logParams":Ljava/util/Map;
    .end local v24    # "curClientVersion":Ljava/lang/String;
    .end local v26    # "curHotpatchVersion":Ljava/lang/String;
    .end local v28    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v2    # "curHotpatchVersion":Ljava/lang/String;
    .restart local v6    # "logParams":Ljava/util/Map;
    .restart local v9    # "curClientVersion":Ljava/lang/String;
    .restart local v19    # "newHotpatchBundleVersion":Ljava/lang/String;
    :cond_5
    move-object/from16 v26, v2

    move-object/from16 v28, v19

    move-object/from16 v27, v23

    move-object/from16 v23, v6

    move-object/from16 v30, v24

    move-object/from16 v24, v9

    move-object/from16 v9, v30

    .end local v2    # "curHotpatchVersion":Ljava/lang/String;
    .end local v6    # "logParams":Ljava/util/Map;
    .end local v9    # "curClientVersion":Ljava/lang/String;
    .end local v19    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v23    # "logParams":Ljava/util/Map;
    .restart local v24    # "curClientVersion":Ljava/lang/String;
    .restart local v26    # "curHotpatchVersion":Ljava/lang/String;
    .restart local v28    # "newHotpatchBundleVersion":Ljava/lang/String;
    move-object/from16 v29, v28

    move-object/from16 v28, v15

    move-object/from16 v15, v23

    move-object/from16 v23, v10

    move-object/from16 v30, v14

    move-object v14, v13

    move-object/from16 v13, v30

    goto/16 :goto_3

    .line 816
    .end local v23    # "logParams":Ljava/util/Map;
    .end local v24    # "curClientVersion":Ljava/lang/String;
    .end local v26    # "curHotpatchVersion":Ljava/lang/String;
    .end local v28    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v2    # "curHotpatchVersion":Ljava/lang/String;
    .local v5, "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v6    # "logParams":Ljava/util/Map;
    .restart local v9    # "curClientVersion":Ljava/lang/String;
    :cond_6
    move-object/from16 v26, v2

    move-object/from16 v28, v5

    move-object/from16 v27, v23

    move-object/from16 v23, v6

    move-object/from16 v30, v24

    move-object/from16 v24, v9

    move-object/from16 v9, v30

    .end local v2    # "curHotpatchVersion":Ljava/lang/String;
    .end local v5    # "newHotpatchBundleVersion":Ljava/lang/String;
    .end local v6    # "logParams":Ljava/util/Map;
    .end local v9    # "curClientVersion":Ljava/lang/String;
    .restart local v23    # "logParams":Ljava/util/Map;
    .restart local v24    # "curClientVersion":Ljava/lang/String;
    .restart local v26    # "curHotpatchVersion":Ljava/lang/String;
    .restart local v28    # "newHotpatchBundleVersion":Ljava/lang/String;
    if-nez p1, :cond_9

    .line 818
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v15}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchVersion(Ljava/lang/String;)V

    .line 819
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v13}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchDesc(Ljava/lang/String;)V

    .line 820
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    move-object/from16 v6, v28

    .end local v28    # "newHotpatchBundleVersion":Ljava/lang/String;
    .local v6, "newHotpatchBundleVersion":Ljava/lang/String;
    invoke-interface {v0, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchBundleVersion(Ljava/lang/String;)V

    .line 821
    if-eqz v7, :cond_8

    .line 822
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x1

    const-string v17, "Start|Download|Verify|Success"

    move-object v5, v13

    .end local v13    # "newHotpatchDesc":Ljava/lang/String;
    .local v5, "newHotpatchDesc":Ljava/lang/String;
    move-object v13, v0

    move-object v4, v14

    move-object v14, v15

    move-object/from16 v28, v15

    .end local v15    # "newHotpatchVersion":Ljava/lang/String;
    .local v28, "newHotpatchVersion":Ljava/lang/String;
    move-object/from16 v18, v23

    invoke-static/range {v13 .. v18}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 824
    invoke-static {v8, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 825
    .local v2, "rollbackDesc":Ljava/lang/String;
    move-object v1, v0

    .end local v2    # "rollbackDesc":Ljava/lang/String;
    .local v1, "rollbackDesc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 826
    move-object/from16 v2, v23

    .end local v23    # "logParams":Ljava/util/Map;
    .local v2, "logParams":Ljava/util/Map;
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const-string v20, "Start|Success"

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v21, v2

    invoke-static/range {v16 .. v21}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 825
    .end local v2    # "logParams":Ljava/util/Map;
    .restart local v23    # "logParams":Ljava/util/Map;
    :cond_7
    move-object/from16 v2, v23

    .line 830
    .end local v23    # "logParams":Ljava/util/Map;
    .restart local v2    # "logParams":Ljava/util/Map;
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 831
    .local v0, "applyEntities":Ljava/util/List;
    new-instance v15, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v13, v15

    move-object/from16 v14, v28

    move-object/from16 v20, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v28

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v19}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object v14, v13

    .line 833
    .local v14, "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-virtual {v15, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->setQuickRollback(I)V

    .line 834
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-static/range {p0 .. p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    move-result-object v3

    sget-object v15, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v15}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "rollbackDesc":Ljava/lang/String;
    .restart local v16    # "rollbackDesc":Ljava/lang/String;
    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->SUCCESS:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    invoke-virtual {v3, v15, v13, v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->handleResult(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Parcelable;)V

    .line 839
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string v3, "gotoForeground"

    invoke-interface {v1, v3, v13}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 840
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string v3, "alivereport"

    invoke-interface {v1, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->upload(Ljava/lang/String;)V

    .line 841
    .end local v0    # "applyEntities":Ljava/util/List;
    .end local v14    # "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .end local v16    # "rollbackDesc":Ljava/lang/String;
    move-object v15, v2

    move-object v13, v4

    move-object v14, v5

    move-object/from16 v29, v6

    move-object/from16 v23, v10

    goto/16 :goto_3

    .line 821
    .end local v2    # "logParams":Ljava/util/Map;
    .end local v5    # "newHotpatchDesc":Ljava/lang/String;
    .end local v28    # "newHotpatchVersion":Ljava/lang/String;
    .restart local v13    # "newHotpatchDesc":Ljava/lang/String;
    .restart local v15    # "newHotpatchVersion":Ljava/lang/String;
    .restart local v23    # "logParams":Ljava/util/Map;
    :cond_8
    move-object v5, v13

    move-object v4, v14

    move-object/from16 v28, v15

    move-object/from16 v2, v23

    .end local v13    # "newHotpatchDesc":Ljava/lang/String;
    .end local v15    # "newHotpatchVersion":Ljava/lang/String;
    .end local v23    # "logParams":Ljava/util/Map;
    .restart local v2    # "logParams":Ljava/util/Map;
    .restart local v5    # "newHotpatchDesc":Ljava/lang/String;
    .restart local v28    # "newHotpatchVersion":Ljava/lang/String;
    move-object v15, v2

    move-object v13, v4

    move-object v14, v5

    move-object/from16 v29, v6

    move-object/from16 v23, v10

    goto/16 :goto_3

    .line 844
    .end local v2    # "logParams":Ljava/util/Map;
    .end local v5    # "newHotpatchDesc":Ljava/lang/String;
    .end local v6    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v13    # "newHotpatchDesc":Ljava/lang/String;
    .restart local v15    # "newHotpatchVersion":Ljava/lang/String;
    .restart local v23    # "logParams":Ljava/util/Map;
    .local v28, "newHotpatchBundleVersion":Ljava/lang/String;
    :cond_9
    move-object v5, v13

    move-object v4, v14

    move-object/from16 v2, v23

    move-object/from16 v6, v28

    move-object/from16 v28, v15

    .end local v13    # "newHotpatchDesc":Ljava/lang/String;
    .end local v15    # "newHotpatchVersion":Ljava/lang/String;
    .end local v23    # "logParams":Ljava/util/Map;
    .restart local v2    # "logParams":Ljava/util/Map;
    .restart local v5    # "newHotpatchDesc":Ljava/lang/String;
    .restart local v6    # "newHotpatchBundleVersion":Ljava/lang/String;
    .local v28, "newHotpatchVersion":Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 845
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x1

    const-string v14, "Start|Download|Verify|Fail"

    move-object/from16 v1, v28

    move-object v15, v2

    .end local v2    # "logParams":Ljava/util/Map;
    .local v15, "logParams":Ljava/util/Map;
    move-object/from16 v2, v28

    move-object/from16 v23, v10

    const/4 v10, 0x1

    .end local v10    # "curHotpatchBundleVersion":Ljava/lang/String;
    .local v23, "curHotpatchBundleVersion":Ljava/lang/String;
    move v3, v13

    move-object v13, v4

    move-object v4, v14

    move-object v14, v5

    .end local v5    # "newHotpatchDesc":Ljava/lang/String;
    .local v14, "newHotpatchDesc":Ljava/lang/String;
    move-object/from16 v5, p1

    move-object/from16 v29, v6

    .end local v6    # "newHotpatchBundleVersion":Ljava/lang/String;
    .local v29, "newHotpatchBundleVersion":Ljava/lang/String;
    move-object v6, v15

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 847
    invoke-static {v8, v14}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 848
    .restart local v1    # "rollbackDesc":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 849
    invoke-interface {v15, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const-string v20, "Start|Fail"

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v21, v15

    invoke-static/range {v16 .. v21}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 853
    :cond_a
    invoke-static {}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getInstance()Lcom/alipay/euler/andfix/AlipayAndfixManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getPatchManager()Lcom/alipay/euler/andfix/patch/PatchManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatches(Z)V

    .line 854
    invoke-static {}, Lcom/alipay/instantrun/compat/AInstantRunManager;->getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/alipay/instantrun/compat/AInstantRunManager;->cleanPatches(Z)V

    .line 855
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 856
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v10}, Lcom/alipay/dexpatch/DexPatchManager;->cleanPatches(ZZ)V

    goto :goto_3

    .line 844
    .end local v1    # "rollbackDesc":Ljava/lang/String;
    .end local v14    # "newHotpatchDesc":Ljava/lang/String;
    .end local v15    # "logParams":Ljava/util/Map;
    .end local v23    # "curHotpatchBundleVersion":Ljava/lang/String;
    .end local v29    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v2    # "logParams":Ljava/util/Map;
    .restart local v5    # "newHotpatchDesc":Ljava/lang/String;
    .restart local v6    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v10    # "curHotpatchBundleVersion":Ljava/lang/String;
    :cond_b
    move-object v15, v2

    move-object v13, v4

    move-object v14, v5

    move-object/from16 v29, v6

    move-object/from16 v23, v10

    .end local v2    # "logParams":Ljava/util/Map;
    .end local v5    # "newHotpatchDesc":Ljava/lang/String;
    .end local v6    # "newHotpatchBundleVersion":Ljava/lang/String;
    .end local v10    # "curHotpatchBundleVersion":Ljava/lang/String;
    .restart local v14    # "newHotpatchDesc":Ljava/lang/String;
    .restart local v15    # "logParams":Ljava/util/Map;
    .restart local v23    # "curHotpatchBundleVersion":Ljava/lang/String;
    .restart local v29    # "newHotpatchBundleVersion":Ljava/lang/String;
    goto :goto_3

    .line 777
    .end local v14    # "newHotpatchDesc":Ljava/lang/String;
    .end local v23    # "curHotpatchBundleVersion":Ljava/lang/String;
    .end local v24    # "curClientVersion":Ljava/lang/String;
    .end local v25    # "targetClientVersion":Ljava/lang/String;
    .end local v26    # "curHotpatchVersion":Ljava/lang/String;
    .end local v28    # "newHotpatchVersion":Ljava/lang/String;
    .end local v29    # "newHotpatchBundleVersion":Ljava/lang/String;
    .local v2, "curHotpatchVersion":Ljava/lang/String;
    .local v3, "targetClientVersion":Ljava/lang/String;
    .local v5, "newHotpatchBundleVersion":Ljava/lang/String;
    .local v6, "logParams":Ljava/util/Map;
    .restart local v9    # "curClientVersion":Ljava/lang/String;
    .restart local v10    # "curHotpatchBundleVersion":Ljava/lang/String;
    .restart local v13    # "newHotpatchDesc":Ljava/lang/String;
    .local v15, "newHotpatchVersion":Ljava/lang/String;
    :cond_c
    move-object/from16 v26, v2

    move-object/from16 v25, v3

    move-object/from16 v29, v5

    move-object/from16 v28, v15

    move-object/from16 v27, v23

    move-object v15, v6

    move-object/from16 v23, v10

    move-object/from16 v30, v24

    move-object/from16 v24, v9

    move-object/from16 v9, v30

    move-object/from16 v31, v14

    move-object v14, v13

    move-object/from16 v13, v31

    .line 863
    .end local v2    # "curHotpatchVersion":Ljava/lang/String;
    .end local v3    # "targetClientVersion":Ljava/lang/String;
    .end local v5    # "newHotpatchBundleVersion":Ljava/lang/String;
    .end local v6    # "logParams":Ljava/util/Map;
    .end local v9    # "curClientVersion":Ljava/lang/String;
    .end local v10    # "curHotpatchBundleVersion":Ljava/lang/String;
    .end local v13    # "newHotpatchDesc":Ljava/lang/String;
    .restart local v14    # "newHotpatchDesc":Ljava/lang/String;
    .local v15, "logParams":Ljava/util/Map;
    .restart local v23    # "curHotpatchBundleVersion":Ljava/lang/String;
    .restart local v24    # "curClientVersion":Ljava/lang/String;
    .restart local v25    # "targetClientVersion":Ljava/lang/String;
    .restart local v26    # "curHotpatchVersion":Ljava/lang/String;
    .restart local v28    # "newHotpatchVersion":Ljava/lang/String;
    .restart local v29    # "newHotpatchBundleVersion":Ljava/lang/String;
    :cond_d
    :goto_3
    if-eqz v7, :cond_e

    .line 864
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 867
    .end local v8    # "curHotpatchDesc":Ljava/lang/String;
    .end local v14    # "newHotpatchDesc":Ljava/lang/String;
    .end local v15    # "logParams":Ljava/util/Map;
    .end local v23    # "curHotpatchBundleVersion":Ljava/lang/String;
    .end local v24    # "curClientVersion":Ljava/lang/String;
    .end local v25    # "targetClientVersion":Ljava/lang/String;
    .end local v26    # "curHotpatchVersion":Ljava/lang/String;
    .end local v28    # "newHotpatchVersion":Ljava/lang/String;
    .end local v29    # "newHotpatchBundleVersion":Ljava/lang/String;
    :cond_e
    return-void
.end method

.method public static monitorDexPatchSuccess(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HotpatchProcessor monitorDexPatchSuccess() e is null "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    move-object/from16 v9, p0

    invoke-virtual {v9, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v10, 0x0

    move-object v2, v10

    .line 642
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v11, v0

    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .local v11, "sp":Landroid/content/SharedPreferences;
    const-string v12, "dexpatch"

    invoke-interface {v0, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 643
    const-string v0, "HotpatchProcessor monitorDexPatchSuccess() sp.contains(KEY_DEXPATCH) is true"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-interface {v11, v12, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 645
    .local v15, "newHotpatchVersion":Ljava/lang/String;
    const-string v14, "issueDesc"

    const-string v0, ""

    invoke-interface {v11, v14, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 646
    .local v13, "newHotpatchDesc":Ljava/lang/String;
    const-string v6, "fromFile"

    const-string v0, "-"

    invoke-interface {v11, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 647
    .local v5, "newHotpatchBundleVersion":Ljava/lang/String;
    const-string v4, "clientVersion"

    const-string/jumbo v2, "unknown"

    invoke-interface {v11, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 648
    .local v3, "targetClientVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchVersion()Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "curHotpatchVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchDesc()Ljava/lang/String;

    move-result-object v7

    .line 650
    .local v7, "curHotpatchDesc":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchBundleVersion()Ljava/lang/String;

    move-result-object v8

    .line 651
    .local v8, "curHotpatchBundleVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v10

    .line 652
    .local v10, "curClientVersion":Ljava/lang/String;
    move-object/from16 v23, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v24, v6

    const-string/jumbo v6, "monitorDexPatchSuccess() newHotpatchVersion="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " vs curHotpatchVersion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " newHotpatchDesc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " vs curHotpatchDesc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " newHotpatchBundleVersion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " vs curHotpatchBundleVersion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " targetClientVersion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " vs curClientVersion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v6, v1

    .line 659
    .local v6, "logParams":Ljava/util/Map;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 660
    invoke-interface {v6, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_1
    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 664
    const-string v1, "0"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 665
    if-nez p1, :cond_3

    .line 667
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchVersion(Ljava/lang/String;)V

    .line 668
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchDesc(Ljava/lang/String;)V

    .line 669
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchBundleVersion(Ljava/lang/String;)V

    .line 671
    invoke-static {v7, v13}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    move-object/from16 v16, v4

    .line 672
    .local v16, "rollbackDesc":Ljava/lang/String;
    move-object v4, v0

    .end local v16    # "rollbackDesc":Ljava/lang/String;
    .local v4, "rollbackDesc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 673
    invoke-interface {v6, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 675
    :cond_2
    invoke-interface {v6, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    :goto_1
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const-string v20, "Start|Success"

    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v21, v6

    invoke-static/range {v16 .. v21}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 680
    .local v0, "rollbackEntities":Ljava/util/List;
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    invoke-direct/range {v16 .. v22}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v17, v16

    .line 682
    .local v17, "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    move-object/from16 v18, v1

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .end local v3    # "targetClientVersion":Ljava/lang/String;
    .local v17, "targetClientVersion":Ljava/lang/String;
    .local v18, "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    invoke-virtual {v1, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->setQuickRollback(I)V

    .line 683
    nop

    .end local v18    # "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .local v1, "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-static/range {p0 .. p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    move-result-object v3

    sget-object v18, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    move-object/from16 v19, v1

    .end local v1    # "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .local v19, "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    invoke-virtual/range {v18 .. v18}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v4

    .end local v4    # "rollbackDesc":Ljava/lang/String;
    .local v18, "rollbackDesc":Ljava/lang/String;
    sget-object v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->SUCCESS:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    move-object/from16 v20, v5

    move-object/from16 v5, v16

    .end local v5    # "newHotpatchBundleVersion":Ljava/lang/String;
    .local v20, "newHotpatchBundleVersion":Ljava/lang/String;
    invoke-virtual {v3, v1, v0, v5, v4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->handleResult(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Parcelable;)V

    .line 686
    .end local v0    # "rollbackEntities":Ljava/util/List;
    .end local v18    # "rollbackDesc":Ljava/lang/String;
    .end local v19    # "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    move-object/from16 v25, v2

    move-object/from16 v28, v15

    move-object/from16 v26, v17

    move-object/from16 v27, v23

    move-object v15, v6

    move-object/from16 v23, v20

    move-object/from16 v29, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v29

    move-object/from16 v30, v14

    move-object v14, v13

    move-object/from16 v13, v30

    goto/16 :goto_4

    .line 689
    .end local v17    # "targetClientVersion":Ljava/lang/String;
    .end local v20    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v3    # "targetClientVersion":Ljava/lang/String;
    .restart local v5    # "newHotpatchBundleVersion":Ljava/lang/String;
    :cond_3
    move-object/from16 v17, v3

    move-object/from16 v20, v5

    const/4 v5, 0x0

    .end local v3    # "targetClientVersion":Ljava/lang/String;
    .end local v5    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v17    # "targetClientVersion":Ljava/lang/String;
    .restart local v20    # "newHotpatchBundleVersion":Ljava/lang/String;
    invoke-static {v7, v13}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v5

    .line 690
    .local v3, "rollbackDesc":Ljava/lang/String;
    move-object v5, v0

    .end local v3    # "rollbackDesc":Ljava/lang/String;
    .local v5, "rollbackDesc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 691
    invoke-interface {v6, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 693
    :cond_4
    invoke-interface {v6, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :goto_2
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "Start|Fail"

    move-object v1, v2

    move-object/from16 v25, v2

    .end local v2    # "curHotpatchVersion":Ljava/lang/String;
    .local v25, "curHotpatchVersion":Ljava/lang/String;
    move-object/from16 v26, v17

    .end local v17    # "targetClientVersion":Ljava/lang/String;
    .local v26, "targetClientVersion":Ljava/lang/String;
    move-object/from16 v27, v23

    move-object/from16 v16, v5

    move-object/from16 v28, v20

    .end local v5    # "rollbackDesc":Ljava/lang/String;
    .end local v20    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v16    # "rollbackDesc":Ljava/lang/String;
    .local v28, "newHotpatchBundleVersion":Ljava/lang/String;
    move-object/from16 v5, p1

    move-object/from16 v23, v6

    move-object/from16 v29, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v29

    .end local v6    # "logParams":Ljava/util/Map;
    .end local v8    # "curHotpatchBundleVersion":Ljava/lang/String;
    .local v23, "logParams":Ljava/util/Map;
    .local v24, "curHotpatchBundleVersion":Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 696
    .end local v16    # "rollbackDesc":Ljava/lang/String;
    move-object/from16 v29, v14

    move-object v14, v13

    move-object/from16 v13, v29

    move-object/from16 v30, v28

    move-object/from16 v28, v15

    move-object/from16 v15, v23

    move-object/from16 v23, v30

    goto/16 :goto_4

    .line 698
    .end local v23    # "logParams":Ljava/util/Map;
    .end local v24    # "curHotpatchBundleVersion":Ljava/lang/String;
    .end local v25    # "curHotpatchVersion":Ljava/lang/String;
    .end local v26    # "targetClientVersion":Ljava/lang/String;
    .end local v28    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v2    # "curHotpatchVersion":Ljava/lang/String;
    .local v3, "targetClientVersion":Ljava/lang/String;
    .local v5, "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v6    # "logParams":Ljava/util/Map;
    .restart local v8    # "curHotpatchBundleVersion":Ljava/lang/String;
    :cond_5
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v5

    move-object/from16 v27, v23

    move-object/from16 v23, v6

    move-object/from16 v29, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v29

    .end local v2    # "curHotpatchVersion":Ljava/lang/String;
    .end local v3    # "targetClientVersion":Ljava/lang/String;
    .end local v5    # "newHotpatchBundleVersion":Ljava/lang/String;
    .end local v6    # "logParams":Ljava/util/Map;
    .end local v8    # "curHotpatchBundleVersion":Ljava/lang/String;
    .restart local v23    # "logParams":Ljava/util/Map;
    .restart local v24    # "curHotpatchBundleVersion":Ljava/lang/String;
    .restart local v25    # "curHotpatchVersion":Ljava/lang/String;
    .restart local v26    # "targetClientVersion":Ljava/lang/String;
    .restart local v28    # "newHotpatchBundleVersion":Ljava/lang/String;
    if-nez p1, :cond_7

    .line 700
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v15}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchVersion(Ljava/lang/String;)V

    .line 701
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v13}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchDesc(Ljava/lang/String;)V

    .line 702
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    move-object/from16 v6, v28

    .end local v28    # "newHotpatchBundleVersion":Ljava/lang/String;
    .local v6, "newHotpatchBundleVersion":Ljava/lang/String;
    invoke-interface {v0, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchBundleVersion(Ljava/lang/String;)V

    .line 703
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x1

    const-string v17, "Start|Download|Verify|Success"

    move-object v5, v13

    .end local v13    # "newHotpatchDesc":Ljava/lang/String;
    .local v5, "newHotpatchDesc":Ljava/lang/String;
    move-object v13, v0

    move-object v4, v14

    move-object v14, v15

    move-object/from16 v28, v15

    .end local v15    # "newHotpatchVersion":Ljava/lang/String;
    .local v28, "newHotpatchVersion":Ljava/lang/String;
    move-object/from16 v18, v23

    invoke-static/range {v13 .. v18}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 705
    invoke-static {v7, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 706
    .local v2, "rollbackDesc":Ljava/lang/String;
    move-object v1, v0

    .end local v2    # "rollbackDesc":Ljava/lang/String;
    .local v1, "rollbackDesc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 707
    move-object/from16 v3, v23

    .end local v23    # "logParams":Ljava/util/Map;
    .local v3, "logParams":Ljava/util/Map;
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const-string v20, "Start|Success"

    move-object/from16 v17, v25

    move-object/from16 v18, v25

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 706
    .end local v3    # "logParams":Ljava/util/Map;
    .restart local v23    # "logParams":Ljava/util/Map;
    :cond_6
    move-object/from16 v3, v23

    .line 711
    .end local v23    # "logParams":Ljava/util/Map;
    .restart local v3    # "logParams":Ljava/util/Map;
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 712
    .local v0, "applyEntities":Ljava/util/List;
    new-instance v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v13, v2

    move-object/from16 v14, v28

    move-object/from16 v15, v28

    move-object/from16 v16, v28

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v19}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object v14, v13

    .line 714
    .local v14, "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    move-object v14, v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->setQuickRollback(I)V

    .line 715
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-static/range {p0 .. p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    move-result-object v2

    sget-object v15, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v15}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "rollbackDesc":Ljava/lang/String;
    .restart local v16    # "rollbackDesc":Ljava/lang/String;
    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->SUCCESS:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    invoke-virtual {v2, v15, v13, v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->handleResult(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Parcelable;)V

    .line 720
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string v2, "gotoForeground"

    invoke-interface {v1, v2, v13}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 721
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string v2, "alivereport"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->upload(Ljava/lang/String;)V

    .line 722
    .end local v0    # "applyEntities":Ljava/util/List;
    .end local v14    # "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .end local v16    # "rollbackDesc":Ljava/lang/String;
    move-object v15, v3

    move-object v13, v4

    move-object v14, v5

    move-object/from16 v23, v6

    goto/16 :goto_4

    .line 724
    .end local v3    # "logParams":Ljava/util/Map;
    .end local v5    # "newHotpatchDesc":Ljava/lang/String;
    .end local v6    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v13    # "newHotpatchDesc":Ljava/lang/String;
    .restart local v15    # "newHotpatchVersion":Ljava/lang/String;
    .restart local v23    # "logParams":Ljava/util/Map;
    .local v28, "newHotpatchBundleVersion":Ljava/lang/String;
    :cond_7
    move-object v5, v13

    move-object v4, v14

    move-object/from16 v3, v23

    move-object/from16 v6, v28

    move-object/from16 v28, v15

    .end local v13    # "newHotpatchDesc":Ljava/lang/String;
    .end local v15    # "newHotpatchVersion":Ljava/lang/String;
    .end local v23    # "logParams":Ljava/util/Map;
    .restart local v3    # "logParams":Ljava/util/Map;
    .restart local v5    # "newHotpatchDesc":Ljava/lang/String;
    .restart local v6    # "newHotpatchBundleVersion":Ljava/lang/String;
    .local v28, "newHotpatchVersion":Ljava/lang/String;
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x1

    const-string v14, "Start|Download|Verify|Fail"

    move-object/from16 v1, v28

    move-object/from16 v2, v28

    move-object v15, v3

    .end local v3    # "logParams":Ljava/util/Map;
    .local v15, "logParams":Ljava/util/Map;
    move v3, v13

    move-object v13, v4

    move-object v4, v14

    move-object v14, v5

    .end local v5    # "newHotpatchDesc":Ljava/lang/String;
    .local v14, "newHotpatchDesc":Ljava/lang/String;
    move-object/from16 v5, p1

    move-object/from16 v23, v6

    .end local v6    # "newHotpatchBundleVersion":Ljava/lang/String;
    .local v23, "newHotpatchBundleVersion":Ljava/lang/String;
    move-object v6, v15

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 726
    invoke-static {v7, v14}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 727
    .restart local v1    # "rollbackDesc":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 728
    invoke-interface {v15, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const-string v20, "Start|Fail"

    move-object/from16 v17, v25

    move-object/from16 v18, v25

    move-object/from16 v21, v15

    invoke-static/range {v16 .. v21}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 732
    :cond_8
    invoke-static {}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getInstance()Lcom/alipay/euler/andfix/AlipayAndfixManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getPatchManager()Lcom/alipay/euler/andfix/patch/PatchManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatches(Z)V

    .line 733
    invoke-static {}, Lcom/alipay/instantrun/compat/AInstantRunManager;->getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/instantrun/compat/AInstantRunManager;->cleanPatches(Z)V

    .line 734
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/alipay/dexpatch/DexPatchManager;->cleanPatches(ZZ)V

    goto :goto_4

    .line 663
    .end local v1    # "rollbackDesc":Ljava/lang/String;
    .end local v14    # "newHotpatchDesc":Ljava/lang/String;
    .end local v23    # "newHotpatchBundleVersion":Ljava/lang/String;
    .end local v24    # "curHotpatchBundleVersion":Ljava/lang/String;
    .end local v25    # "curHotpatchVersion":Ljava/lang/String;
    .end local v26    # "targetClientVersion":Ljava/lang/String;
    .end local v28    # "newHotpatchVersion":Ljava/lang/String;
    .local v2, "curHotpatchVersion":Ljava/lang/String;
    .local v3, "targetClientVersion":Ljava/lang/String;
    .local v5, "newHotpatchBundleVersion":Ljava/lang/String;
    .local v6, "logParams":Ljava/util/Map;
    .restart local v8    # "curHotpatchBundleVersion":Ljava/lang/String;
    .restart local v13    # "newHotpatchDesc":Ljava/lang/String;
    .local v15, "newHotpatchVersion":Ljava/lang/String;
    :cond_9
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v15

    move-object/from16 v27, v23

    move-object/from16 v23, v5

    move-object v15, v6

    move-object/from16 v29, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v29

    move-object/from16 v30, v14

    move-object v14, v13

    move-object/from16 v13, v30

    .line 739
    .end local v2    # "curHotpatchVersion":Ljava/lang/String;
    .end local v3    # "targetClientVersion":Ljava/lang/String;
    .end local v5    # "newHotpatchBundleVersion":Ljava/lang/String;
    .end local v6    # "logParams":Ljava/util/Map;
    .end local v8    # "curHotpatchBundleVersion":Ljava/lang/String;
    .end local v13    # "newHotpatchDesc":Ljava/lang/String;
    .restart local v14    # "newHotpatchDesc":Ljava/lang/String;
    .local v15, "logParams":Ljava/util/Map;
    .restart local v23    # "newHotpatchBundleVersion":Ljava/lang/String;
    .restart local v24    # "curHotpatchBundleVersion":Ljava/lang/String;
    .restart local v25    # "curHotpatchVersion":Ljava/lang/String;
    .restart local v26    # "targetClientVersion":Ljava/lang/String;
    .restart local v28    # "newHotpatchVersion":Ljava/lang/String;
    :goto_4
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 741
    .end local v7    # "curHotpatchDesc":Ljava/lang/String;
    .end local v10    # "curClientVersion":Ljava/lang/String;
    .end local v14    # "newHotpatchDesc":Ljava/lang/String;
    .end local v15    # "logParams":Ljava/util/Map;
    .end local v23    # "newHotpatchBundleVersion":Ljava/lang/String;
    .end local v24    # "curHotpatchBundleVersion":Ljava/lang/String;
    .end local v25    # "curHotpatchVersion":Ljava/lang/String;
    .end local v26    # "targetClientVersion":Ljava/lang/String;
    .end local v28    # "newHotpatchVersion":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method public static restoreHotpatchState(Landroid/content/Context;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    const-string v2, "DynamicRelease"

    .line 563
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 564
    .local v3, "root":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "hotpach.cache"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v5, v4

    .line 565
    .local v5, "store":Ljava/io/File;
    move-object v5, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 566
    const/4 v6, 0x0

    .line 568
    .local v6, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 569
    move-object v6, v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "drv":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    .line 571
    .local v14, "filePath":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    .line 572
    .local v15, "issueDesc":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    .line 573
    .local v13, "productVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/quinox/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/io/File;

    const-string v9, "apatch"

    invoke-direct {v8, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 576
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "restoreHotpatchState(context="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", drv="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", filePath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", issueDesc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", productVersion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 576
    invoke-interface {v7, v2, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    new-instance v16, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    const/4 v11, 0x0

    move-object/from16 v7, v16

    move-object v8, v0

    move-object v9, v0

    move-object v10, v0

    move-object v12, v15

    move-object/from16 v17, v13

    .end local v13    # "productVersion":Ljava/lang/String;
    .local v17, "productVersion":Ljava/lang/String;
    move-object v13, v14

    invoke-direct/range {v7 .. v13}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v16

    .line 581
    .local v7, "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    new-instance v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;

    invoke-direct {v8, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->applyHotpatch(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;)Z

    move-result v8

    .line 582
    if-eqz v8, :cond_2

    .line 583
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v4

    .line 584
    .local v9, "applyEntities":Ljava/util/List;
    move-object v9, v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-static/range {p0 .. p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    move-result-object v8

    sget-object v10, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v10}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->SUCCESS:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    invoke-virtual {v8, v10, v4, v9, v11}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->handleResult(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 574
    .end local v7    # "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .end local v9    # "applyEntities":Ljava/util/List;
    .end local v17    # "productVersion":Ljava/lang/String;
    .restart local v13    # "productVersion":Ljava/lang/String;
    :cond_0
    move-object/from16 v17, v13

    .end local v13    # "productVersion":Ljava/lang/String;
    .restart local v17    # "productVersion":Ljava/lang/String;
    goto :goto_0

    .line 573
    .end local v17    # "productVersion":Ljava/lang/String;
    .restart local v13    # "productVersion":Ljava/lang/String;
    :cond_1
    move-object/from16 v17, v13

    .line 592
    .end local v0    # "drv":Ljava/lang/String;
    .end local v13    # "productVersion":Ljava/lang/String;
    .end local v14    # "filePath":Ljava/lang/String;
    .end local v15    # "issueDesc":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 593
    return-void

    .line 589
    :catchall_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 592
    :catchall_1
    move-exception v0

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    .line 595
    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    :cond_3
    return-void
.end method

.method public static storeHotpatchState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drv"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "issueDesc"    # Ljava/lang/String;

    const-string v0, "DynamicRelease"

    .line 529
    const/4 v1, 0x0

    .line 531
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "hotpach.cache"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 532
    .local v3, "store":Ljava/io/File;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 535
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 537
    move-object v1, v2

    invoke-static {v2, p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 538
    invoke-static {v1, p2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 539
    invoke-static {v1, p3}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 541
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 542
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 544
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "storeHotpatchState(context="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", drv="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", filePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", issueDesc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", productVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 544
    invoke-interface {v2, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    .end local v3    # "store":Ljava/io/File;
    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 554
    return-void

    .line 548
    .restart local v3    # "store":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Failed to create new file: hotpach.cache"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "drv":Ljava/lang/String;
    .end local p2    # "filePath":Ljava/lang/String;
    .end local p3    # "issueDesc":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    .end local v3    # "store":Ljava/io/File;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "drv":Ljava/lang/String;
    .restart local p2    # "filePath":Ljava/lang/String;
    .restart local p3    # "issueDesc":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 551
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v2    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 553
    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method protected applyHotpatch(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;)Z
    .locals 44
    .param p1, "item"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 141
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;

    const-string v3, "applyHotpatch"

    invoke-static {v0, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->cleanMonitorXXRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getDynamicReleaseVersion()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "newHotpatchVersion":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getIssueDesc()Ljava/lang/String;

    move-result-object v10

    .line 145
    .local v10, "newHotpatchDesc":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 146
    .local v11, "newHotpatchBundleVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchVersion()Ljava/lang/String;

    move-result-object v12

    .line 147
    .local v12, "curHotpatchVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchDesc()Ljava/lang/String;

    move-result-object v13

    .line 148
    .local v13, "curHotpatchDesc":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchBundleVersion()Ljava/lang/String;

    move-result-object v14

    .line 150
    .local v14, "curHotpatchBundleVersion":Ljava/lang/String;
    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;

    const-string v4, "DynamicRelease"

    const/4 v15, 0x0

    invoke-virtual {v0, v4, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v9, 0x0

    move-object v5, v9

    .line 151
    .local v5, "sp":Landroid/content/SharedPreferences;
    move-object/from16 v16, v0

    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .local v16, "sp":Landroid/content/SharedPreferences;
    const-string v5, "hotpatch_isforce"

    const/4 v8, 0x1

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 153
    .local v0, "isForce":Z
    const/16 v17, 0x0

    .line 154
    .local v17, "delaySetNeedRestart":Z
    const/16 v18, 0x0

    .line 156
    .local v18, "delayTrigKillProcess":Z
    if-eqz v0, :cond_1

    .line 158
    invoke-static {v12}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    invoke-static {v12, v5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v15

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v5, v15

    const/4 v6, 0x0

    .line 159
    .local v5, "cover":Z
    :goto_0
    if-eqz v6, :cond_2

    .line 160
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "isForce = false : curHotpatchVersion="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", is not empty."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x0

    goto :goto_1

    .line 156
    .end local v5    # "cover":Z
    :cond_1
    const/4 v5, 0x0

    .line 165
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 166
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 167
    .local v5, "is7Up":Z
    :goto_2
    if-eqz v6, :cond_4

    .line 168
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "isForce = false : Build.VERSION.SDK_INT="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    move/from16 v43, v5

    move v5, v0

    move/from16 v0, v43

    goto :goto_3

    .line 167
    :cond_4
    move/from16 v43, v5

    move v5, v0

    move/from16 v0, v43

    goto :goto_3

    .line 165
    .end local v5    # "is7Up":Z
    :cond_5
    move/from16 v43, v5

    move v5, v0

    move/from16 v0, v43

    .line 172
    .end local v0    # "isForce":Z
    .local v5, "isForce":Z
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "applyHotPatch(isForce="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "), newHotpatchVersion="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", curHotpatchVersion="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", newHotpatchDesc="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", curHotpatchDesc="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", newHotpatchBundleVersion="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", curHotpatchBundleVersion="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v0

    .line 177
    .local v6, "bTotalResult":Z
    const/4 v7, 0x0

    .line 179
    .local v7, "bNeedForceRestart":Z
    const/4 v9, 0x0

    .line 180
    .local v9, "hasAndFixPatch":Z
    const/16 v20, 0x0

    .line 181
    .local v20, "andfixImmediate":Z
    const/16 v21, 0x0

    .line 182
    .local v21, "andfixResult":Z
    const/16 v22, 0x0

    .line 183
    .local v22, "hasDexPatch":Z
    const/4 v0, 0x0

    .local v0, "dexPatchResult":Z
    move/from16 v23, v15

    .local v23, "hasInstantRun":Z
    move/from16 v24, v0

    .line 186
    .end local v0    # "dexPatchResult":Z
    .local v24, "dexPatchResult":Z
    const/4 v0, 0x0

    .local v0, "isInstantRunImmediately":Z
    move/from16 v25, v15

    .local v25, "isInstantRunNeedReboot":Z
    move/from16 v26, v0

    .line 188
    .end local v0    # "isInstantRunImmediately":Z
    .local v26, "isInstantRunImmediately":Z
    const/16 v27, 0x0

    .line 190
    .local v27, "instantRunResult":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v28

    .line 194
    .local v28, "isMainProcess":Z
    :try_start_0
    invoke-static {}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getInstance()Lcom/alipay/euler/andfix/AlipayAndfixManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getPatchManager()Lcom/alipay/euler/andfix/patch/PatchManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatches(Z)V

    .line 196
    invoke-static {}, Lcom/alipay/instantrun/compat/AInstantRunManager;->getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/alipay/instantrun/compat/AInstantRunManager;->cleanPatches(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 198
    if-eqz v28, :cond_6

    .line 199
    :try_start_1
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v15, v15, v8}, Lcom/alipay/dexpatch/DexPatchManager;->cleanPatches(ZZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 287
    :catchall_0
    move-exception v0

    move/from16 v31, v6

    const/4 v15, 0x1

    goto/16 :goto_10

    .line 203
    :cond_6
    :goto_4
    :try_start_2
    invoke-static {}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getInstance()Lcom/alipay/euler/andfix/AlipayAndfixManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getPatchManager()Lcom/alipay/euler/andfix/patch/PatchManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/alipay/euler/andfix/patch/PatchManager;->containAndFixPatch(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move v9, v0

    .line 204
    if-eqz v28, :cond_7

    .line 205
    :try_start_3
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/alipay/dexpatch/DexPatchManager;->containDexPatch(Ljava/lang/String;)Z

    move-result v0

    move/from16 v22, v0

    .line 208
    :cond_7
    if-eqz v9, :cond_8

    .line 209
    invoke-static {}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getInstance()Lcom/alipay/euler/andfix/AlipayAndfixManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getPatchManager()Lcom/alipay/euler/andfix/patch/PatchManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/alipay/euler/andfix/patch/PatchManager;->hasInstantPatch(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v20, v0

    .line 210
    if-nez v5, :cond_8

    .line 211
    const/16 v20, 0x0

    .line 215
    :cond_8
    if-nez v20, :cond_9

    .line 216
    const/4 v5, 0x0

    .line 219
    :cond_9
    :try_start_4
    invoke-static {}, Lcom/alipay/instantrun/compat/AInstantRunManager;->getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/alipay/instantrun/compat/AInstantRunManager;->containInstantRunPatch(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 220
    move/from16 v23, v0

    if-eqz v0, :cond_a

    .line 221
    :try_start_5
    invoke-static {}, Lcom/alipay/instantrun/compat/AInstantRunManager;->getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/alipay/instantrun/compat/AInstantRunManager;->hasInstantPatch(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v26, v0

    .line 223
    :cond_a
    :try_start_6
    invoke-static {}, Lcom/alipay/instantrun/compat/AInstantRunManager;->getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/alipay/instantrun/compat/AInstantRunManager;->needRestartProcess(Ljava/lang/String;)Z

    move-result v0

    move/from16 v25, v0

    .line 228
    if-nez v5, :cond_b

    if-eqz v26, :cond_c

    .line 229
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchVersion(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchDesc(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchBundleVersion(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 237
    :cond_c
    const/4 v0, 0x1

    .line 238
    .local v0, "andfixApplyState":I
    if-eqz v9, :cond_d

    .line 239
    :try_start_7
    invoke-static {}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getInstance()Lcom/alipay/euler/andfix/AlipayAndfixManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getPatchManager()Lcom/alipay/euler/andfix/patch/PatchManager;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLocation()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15, v5}, Lcom/alipay/euler/andfix/patch/PatchManager;->addNewPatch(Ljava/lang/String;Z)I

    move-result v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v8

    .line 240
    const/16 v21, 0x1

    goto :goto_5

    .line 238
    :cond_d
    move v8, v0

    .line 245
    .end local v0    # "andfixApplyState":I
    .local v8, "andfixApplyState":I
    :goto_5
    if-eqz v23, :cond_11

    .line 246
    :try_start_8
    invoke-static {}, Lcom/alipay/instantrun/compat/AInstantRunManager;->getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLocation()Ljava/lang/String;

    move-result-object v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v5, :cond_f

    if-eqz v26, :cond_e

    goto :goto_6

    :cond_e
    move/from16 v31, v6

    const/4 v6, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    move/from16 v31, v6

    const/4 v6, 0x1

    .end local v6    # "bTotalResult":Z
    .local v31, "bTotalResult":Z
    :goto_7
    :try_start_9
    invoke-virtual {v0, v15, v6}, Lcom/alipay/instantrun/compat/AInstantRunManager;->addNewPatch(Ljava/lang/String;Z)I

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v6, 0x0

    move v15, v6

    .line 247
    .local v15, "instantRunAddResult":I
    move v6, v0

    .end local v15    # "instantRunAddResult":I
    .local v6, "instantRunAddResult":I
    and-int/lit16 v0, v0, 0x100

    if-lez v0, :cond_10

    .line 248
    const/16 v25, 0x1

    .line 250
    :cond_10
    and-int/lit8 v0, v6, 0x10

    if-lez v0, :cond_12

    .line 251
    const/16 v27, 0x1

    goto :goto_8

    .line 245
    .end local v31    # "bTotalResult":Z
    .local v6, "bTotalResult":Z
    :cond_11
    move/from16 v31, v6

    .line 257
    .end local v6    # "bTotalResult":Z
    .restart local v31    # "bTotalResult":Z
    :cond_12
    :goto_8
    if-eqz v22, :cond_14

    .line 259
    :try_start_a
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/dexpatch/DexPatchManager;->ensureInit()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 262
    goto :goto_9

    .line 260
    :catchall_1
    move-exception v0

    .line 261
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_b
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string v15, "DexP.HotpatchProcessor"

    invoke-interface {v6, v15, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_9
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/dexpatch/DexPatchManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 265
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLocation()Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    invoke-virtual {v0, v6, v15}, Lcom/alipay/dexpatch/DexPatchManager;->addPatch(Ljava/lang/String;Z)Z

    move-result v0

    move/from16 v24, v0

    .end local v24    # "dexPatchResult":Z
    .local v0, "dexPatchResult":Z
    goto :goto_a

    .line 267
    .end local v0    # "dexPatchResult":Z
    .restart local v24    # "dexPatchResult":Z
    :cond_13
    const/4 v0, 0x0

    move/from16 v22, v0

    .line 272
    :cond_14
    :goto_a
    if-nez v5, :cond_16

    if-eqz v26, :cond_15

    goto :goto_b

    :cond_15
    const/4 v6, 0x0

    goto :goto_c

    :cond_16
    :goto_b
    const/4 v6, 0x1

    :goto_c
    invoke-virtual {v2, v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->setQuickRollback(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 275
    if-eqz v9, :cond_17

    const/4 v15, 0x1

    if-eq v8, v15, :cond_18

    .line 276
    const/4 v7, 0x1

    goto :goto_d

    .line 275
    :cond_17
    const/4 v15, 0x1

    .line 279
    :cond_18
    :goto_d
    if-eqz v25, :cond_19

    .line 280
    const/4 v7, 0x1

    .line 283
    :cond_19
    if-eqz v22, :cond_1a

    if-eqz v24, :cond_1a

    .line 284
    const/4 v0, 0x0

    move v7, v0

    .line 286
    :cond_1a
    if-eqz v9, :cond_1b

    if-eqz v21, :cond_1d

    :cond_1b
    if-eqz v22, :cond_1c

    if-eqz v24, :cond_1d

    :cond_1c
    if-eqz v23, :cond_1e

    if-eqz v27, :cond_1d

    goto :goto_e

    :cond_1d
    const/4 v6, 0x0

    goto :goto_f

    :cond_1e
    :goto_e
    const/4 v6, 0x1

    :goto_f
    move v0, v6

    .line 297
    .end local v8    # "andfixApplyState":I
    .end local v31    # "bTotalResult":Z
    .local v0, "bTotalResult":Z
    move/from16 v29, v25

    move/from16 v31, v26

    move/from16 v32, v27

    move/from16 v25, v22

    move/from16 v26, v23

    move/from16 v27, v24

    move/from16 v22, v9

    move/from16 v23, v20

    move/from16 v24, v21

    move/from16 v20, v5

    move/from16 v21, v7

    goto :goto_11

    .line 287
    .end local v0    # "bTotalResult":Z
    .restart local v31    # "bTotalResult":Z
    :catchall_2
    move-exception v0

    const/4 v15, 0x1

    goto :goto_10

    .end local v31    # "bTotalResult":Z
    .restart local v6    # "bTotalResult":Z
    :catchall_3
    move-exception v0

    move/from16 v31, v6

    const/4 v15, 0x1

    .line 288
    .end local v6    # "bTotalResult":Z
    .local v0, "tr":Ljava/lang/Throwable;
    .restart local v31    # "bTotalResult":Z
    :goto_10
    const/4 v6, 0x0

    .line 291
    .end local v31    # "bTotalResult":Z
    .restart local v6    # "bTotalResult":Z
    if-nez v5, :cond_1f

    if-eqz v26, :cond_20

    .line 292
    :cond_1f
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v8

    invoke-interface {v8, v12}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchVersion(Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v8

    invoke-interface {v8, v13}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchDesc(Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v8

    invoke-interface {v8, v14}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchBundleVersion(Ljava/lang/String;)V

    .line 296
    :cond_20
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    invoke-interface {v8, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    move/from16 v29, v25

    move/from16 v31, v26

    move/from16 v32, v27

    move/from16 v25, v22

    move/from16 v26, v23

    move/from16 v27, v24

    move/from16 v22, v9

    move/from16 v23, v20

    move/from16 v24, v21

    move/from16 v20, v5

    move/from16 v21, v7

    .line 300
    .end local v5    # "isForce":Z
    .end local v6    # "bTotalResult":Z
    .end local v7    # "bNeedForceRestart":Z
    .end local v9    # "hasAndFixPatch":Z
    .local v0, "bTotalResult":Z
    .local v20, "isForce":Z
    .local v21, "bNeedForceRestart":Z
    .local v22, "hasAndFixPatch":Z
    .local v23, "andfixImmediate":Z
    .local v24, "andfixResult":Z
    .local v25, "hasDexPatch":Z
    .local v26, "hasInstantRun":Z
    .local v27, "dexPatchResult":Z
    .local v29, "isInstantRunNeedReboot":Z
    .local v31, "isInstantRunImmediately":Z
    .local v32, "instantRunResult":Z
    :goto_11
    const/4 v5, 0x0

    .line 301
    .local v5, "writeLogNow":Z
    const/4 v6, 0x0

    .line 303
    .local v6, "trigKill":Z
    if-nez v23, :cond_22

    if-eqz v31, :cond_21

    goto :goto_12

    :cond_21
    move/from16 v33, v5

    goto :goto_13

    .line 304
    :cond_22
    :goto_12
    const/4 v5, 0x1

    move/from16 v33, v5

    .line 306
    .end local v5    # "writeLogNow":Z
    .local v33, "writeLogNow":Z
    :goto_13
    if-nez v21, :cond_23

    if-nez v25, :cond_23

    .line 307
    const/4 v6, 0x1

    move/from16 v34, v6

    goto :goto_14

    .line 310
    :cond_23
    move/from16 v34, v6

    .end local v6    # "trigKill":Z
    .local v34, "trigKill":Z
    :goto_14
    const-string v5, "\', KEY_CLIENT_VERSION=\'"

    const-string v6, "\', KEY_FROM_FILE=\'"

    const-string v7, "\', KEY_ISSUEDESC=\'"

    const-string v8, "clientVersion"

    const-string v9, "fromFile"

    const-string v15, "issueDesc"

    if-eqz v0, :cond_2a

    .line 311
    if-eqz v33, :cond_25

    .line 312
    sget-object v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLogParams()Ljava/util/Map;

    move-result-object v9

    const-string v8, "Start|Download|Verify|Success"

    move-object v5, v3

    move-object v6, v3

    const/16 v35, 0x0

    invoke-static/range {v4 .. v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 314
    invoke-static {v13, v10}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v35

    .line 315
    .local v5, "rollbackDesc":Ljava/lang/String;
    move-object v8, v4

    .end local v5    # "rollbackDesc":Ljava/lang/String;
    .local v8, "rollbackDesc":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 316
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLogParams()Ljava/util/Map;

    move-result-object v4

    move-object/from16 v5, v35

    .line 317
    .local v5, "logParams":Ljava/util/Map;
    move-object v9, v4

    .end local v5    # "logParams":Ljava/util/Map;
    .local v9, "logParams":Ljava/util/Map;
    invoke-interface {v4, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const-string v15, "Start|Success"

    move-object v5, v12

    move-object v6, v12

    move-object/from16 v19, v8

    .end local v8    # "rollbackDesc":Ljava/lang/String;
    .local v19, "rollbackDesc":Ljava/lang/String;
    move-object v8, v15

    invoke-static/range {v4 .. v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_15

    .line 315
    .end local v9    # "logParams":Ljava/util/Map;
    .end local v19    # "rollbackDesc":Ljava/lang/String;
    .restart local v8    # "rollbackDesc":Ljava/lang/String;
    :cond_24
    move-object/from16 v19, v8

    .line 322
    .end local v8    # "rollbackDesc":Ljava/lang/String;
    .restart local v19    # "rollbackDesc":Ljava/lang/String;
    :goto_15
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    const-string v5, "gotoForeground"

    move-object/from16 v6, v35

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    const-string v5, "alivereport"

    invoke-interface {v4, v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->upload(Ljava/lang/String;)V

    .line 324
    .end local v19    # "rollbackDesc":Ljava/lang/String;
    move/from16 v35, v0

    move-object/from16 v36, v12

    move-object/from16 v19, v14

    goto/16 :goto_17

    .line 329
    :cond_25
    const-string v19, "andfix"

    .line 330
    .local v19, "monitorKey":Ljava/lang/String;
    if-eqz v25, :cond_26

    if-nez v22, :cond_26

    .line 331
    const-string v19, "dexpatch"

    move/from16 v35, v0

    move-object/from16 v0, v19

    goto :goto_16

    .line 333
    :cond_26
    move/from16 v35, v0

    move-object/from16 v0, v19

    .end local v19    # "monitorKey":Ljava/lang/String;
    .local v0, "monitorKey":Ljava/lang/String;
    .local v35, "bTotalResult":Z
    :goto_16
    move-object/from16 v19, v14

    .end local v14    # "curHotpatchBundleVersion":Ljava/lang/String;
    .local v19, "curHotpatchBundleVersion":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    move-object/from16 v36, v12

    .end local v12    # "curHotpatchVersion":Ljava/lang/String;
    .local v36, "curHotpatchVersion":Ljava/lang/String;
    iget-object v12, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->issueDesc:Ljava/lang/String;

    invoke-interface {v14, v15, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12, v9, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v14

    invoke-interface {v14}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v8, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Put "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "=\'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->issueDesc:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'. don\'t load andfix immediately."

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .end local v0    # "monitorKey":Ljava/lang/String;
    :goto_17
    if-nez v25, :cond_27

    .line 339
    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {v0, v12}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->setNeedRestart(Landroid/content/Context;Z)V

    .line 340
    const/16 v17, 0x1

    goto :goto_18

    .line 338
    :cond_27
    const/4 v12, 0x1

    .line 343
    :goto_18
    if-eqz v21, :cond_28

    .line 344
    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;

    invoke-static {v0, v12}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->setNeedRestart(Landroid/content/Context;Z)V

    .line 345
    const/16 v17, 0x1

    .line 348
    :cond_28
    if-eqz v34, :cond_29

    .line 349
    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->resumeKillProcess()Z

    .line 350
    const/16 v18, 0x1

    move/from16 v0, v35

    goto/16 :goto_1a

    .line 348
    :cond_29
    move/from16 v0, v35

    goto/16 :goto_1a

    .line 354
    .end local v19    # "curHotpatchBundleVersion":Ljava/lang/String;
    .end local v35    # "bTotalResult":Z
    .end local v36    # "curHotpatchVersion":Ljava/lang/String;
    .local v0, "bTotalResult":Z
    .restart local v12    # "curHotpatchVersion":Ljava/lang/String;
    .restart local v14    # "curHotpatchBundleVersion":Ljava/lang/String;
    :cond_2a
    move/from16 v35, v0

    move-object/from16 v36, v12

    move-object/from16 v19, v14

    const/4 v12, 0x1

    const/4 v14, 0x0

    .end local v0    # "bTotalResult":Z
    .end local v12    # "curHotpatchVersion":Ljava/lang/String;
    .end local v14    # "curHotpatchBundleVersion":Ljava/lang/String;
    .restart local v19    # "curHotpatchBundleVersion":Ljava/lang/String;
    .restart local v35    # "bTotalResult":Z
    .restart local v36    # "curHotpatchVersion":Ljava/lang/String;
    if-nez v20, :cond_2b

    if-eqz v31, :cond_2c

    :cond_2b
    if-nez v25, :cond_2c

    .line 355
    const/4 v0, 0x1

    .line 364
    .end local v35    # "bTotalResult":Z
    .restart local v0    # "bTotalResult":Z
    const-string v14, "andfix"

    .line 365
    .local v14, "monitorKey":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12, v14, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    move/from16 v30, v0

    .end local v0    # "bTotalResult":Z
    .local v30, "bTotalResult":Z
    iget-object v0, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->issueDesc:Ljava/lang/String;

    invoke-interface {v12, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v9, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v12

    invoke-interface {v12}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 366
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Put KEY_ANDFIX=\'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->issueDesc:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .end local v14    # "monitorKey":Ljava/lang/String;
    move-object v0, v14

    const/4 v5, 0x1

    .local v0, "rollbackDesc":Ljava/lang/String;
    goto :goto_19

    .line 373
    .end local v0    # "rollbackDesc":Ljava/lang/String;
    .end local v30    # "bTotalResult":Z
    .restart local v35    # "bTotalResult":Z
    :cond_2c
    const/4 v0, 0x0

    .line 375
    .end local v35    # "bTotalResult":Z
    .local v0, "bTotalResult":Z
    sget-object v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLogParams()Ljava/util/Map;

    move-result-object v9

    const-string v8, "Start|Download|Verify|Fail"

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v4 .. v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 377
    invoke-static {v13, v10}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v14

    .line 378
    .local v5, "rollbackDesc":Ljava/lang/String;
    move-object v12, v4

    .end local v5    # "rollbackDesc":Ljava/lang/String;
    .local v12, "rollbackDesc":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLogParams()Ljava/util/Map;

    move-result-object v4

    move-object v5, v14

    .line 380
    .local v5, "logParams":Ljava/util/Map;
    move-object v9, v4

    .end local v5    # "logParams":Ljava/util/Map;
    .restart local v9    # "logParams":Ljava/util/Map;
    invoke-interface {v4, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const-string v8, "Start|Fail"

    move-object/from16 v5, v36

    move-object/from16 v6, v36

    invoke-static/range {v4 .. v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 386
    .end local v9    # "logParams":Ljava/util/Map;
    :cond_2d
    invoke-static {}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getInstance()Lcom/alipay/euler/andfix/AlipayAndfixManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getPatchManager()Lcom/alipay/euler/andfix/patch/PatchManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatches(Z)V

    .line 387
    invoke-static {}, Lcom/alipay/instantrun/compat/AInstantRunManager;->getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/alipay/instantrun/compat/AInstantRunManager;->cleanPatches(Z)V

    .line 388
    if-eqz v28, :cond_2e

    .line 389
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/alipay/dexpatch/DexPatchManager;->cleanPatches(ZZ)V

    .line 393
    :cond_2e
    move/from16 v30, v0

    move-object v0, v12

    .end local v12    # "rollbackDesc":Ljava/lang/String;
    .local v0, "rollbackDesc":Ljava/lang/String;
    .restart local v30    # "bTotalResult":Z
    :goto_19
    iget-object v4, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->setNeedRestart(Landroid/content/Context;Z)V

    .line 394
    const/16 v17, 0x1

    move/from16 v0, v30

    .line 399
    .end local v30    # "bTotalResult":Z
    .local v0, "bTotalResult":Z
    :goto_1a
    iget-object v4, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->clearHotpatchState(Landroid/content/Context;)V

    .line 401
    if-nez v17, :cond_2f

    if-eqz v18, :cond_30

    .line 402
    :cond_2f
    move/from16 v4, v17

    .line 403
    .local v4, "final_delaySetNeedRestart":Z
    move/from16 v5, v18

    .line 404
    .local v5, "final_delayTrigKillProcess":Z
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v37

    new-instance v6, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor$1;

    invoke-direct {v6, v1, v4, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor$1;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;ZZ)V

    const-wide/16 v40, 0x5

    sget-object v42, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v39, "delayKillProcess"

    move-object/from16 v38, v6

    invoke-virtual/range {v37 .. v42}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 417
    .end local v4    # "final_delaySetNeedRestart":Z
    .end local v5    # "final_delayTrigKillProcess":Z
    :cond_30
    return v0
.end method

.method public processDynamicRelease(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .param p1, "rollbackEntities"    # Ljava/util/List;
    .param p2, "applyEntities"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;)Z"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->pauseKillProcess()Z

    .line 118
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 122
    .local v0, "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getDynamicReleaseVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getIssueDesc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->storeHotpatchState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->applyHotpatch(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;)Z

    move-result v0

    .line 125
    .local v0, "bRet":Z
    goto :goto_0

    .end local v0    # "bRet":Z
    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 126
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 128
    .local v1, "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getQuickRollback()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->rollback(ZLcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;)Z

    move-result v0

    .line 129
    .end local v1    # "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .restart local v0    # "bRet":Z
    goto :goto_0

    .line 130
    .end local v0    # "bRet":Z
    :cond_2
    const/4 v0, 0x0

    .line 132
    .restart local v0    # "bRet":Z
    :goto_0
    return v0
.end method

.method protected rollback(ZLcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;)Z
    .locals 12

    .line 421
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applyRollback(isForce="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicRelease"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchVersion()Ljava/lang/String;

    move-result-object v5

    .line 424
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchDesc()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_9

    const-string v1, "0"

    invoke-static {v5, v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_5

    .line 431
    :cond_0
    nop

    .line 432
    nop

    .line 436
    const/4 v10, 0x1

    :try_start_0
    invoke-static {}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getInstance()Lcom/alipay/euler/andfix/AlipayAndfixManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getPatchManager()Lcom/alipay/euler/andfix/patch/PatchManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatches(Z)V

    .line 437
    invoke-static {}, Lcom/alipay/instantrun/compat/AInstantRunManager;->getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/alipay/instantrun/compat/AInstantRunManager;->cleanPatches(Z)V

    .line 438
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v3

    .line 439
    if-eqz v3, :cond_1

    .line 440
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lcom/alipay/dexpatch/DexPatchManager;->cleanPatches(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_1
    nop

    .line 446
    const/4 v11, 0x1

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v3

    .line 444
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    const/4 v11, 0x0

    .line 448
    :goto_0
    const-string v3, "issueDesc"

    if-eqz v11, :cond_4

    .line 449
    if-eqz p1, :cond_3

    .line 450
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string v4, "Call PatchManager.rollback() now."

    invoke-interface {p1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getInstance()Lcom/alipay/euler/andfix/AlipayAndfixManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getPatchManager()Lcom/alipay/euler/andfix/patch/PatchManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/PatchManager;->rollback()V

    .line 452
    invoke-static {}, Lcom/alipay/instantrun/compat/AInstantRunManager;->getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/instantrun/compat/AInstantRunManager;->rollback()V

    .line 455
    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLogParams()Ljava/util/Map;

    move-result-object v8

    .line 456
    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getIssueDesc()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 457
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 458
    invoke-interface {v8, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 460
    :cond_2
    invoke-interface {v8, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :goto_1
    sget-object p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {p1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const-string v7, "Start|Success"

    move-object v4, v5

    invoke-static/range {v3 .. v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 463
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchVersion(Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchDesc(Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object p1

    const-string p2, "-"

    invoke-interface {p1, p2}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchBundleVersion(Ljava/lang/String;)V

    .line 468
    iget-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->resumeKillProcess()Z

    .line 469
    nop

    .line 470
    goto/16 :goto_4

    .line 471
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string p2, "Don\'t call PatchManager.rollback() immediately."

    invoke-interface {p1, v2, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;

    invoke-virtual {p1, v2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 477
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "andfix"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "clientVersion"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 478
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string p2, "Put KEY_ANDFIX=\'0\'"

    invoke-interface {p1, v2, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    goto :goto_3

    .line 486
    :cond_4
    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLogParams()Ljava/util/Map;

    move-result-object v8

    .line 487
    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getIssueDesc()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 488
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 489
    invoke-interface {v8, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 491
    :cond_5
    invoke-interface {v8, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :goto_2
    sget-object p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {p1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const-string v7, "Start|Fail"

    move-object v4, v5

    invoke-static/range {v3 .. v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 497
    invoke-static {}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getInstance()Lcom/alipay/euler/andfix/AlipayAndfixManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getPatchManager()Lcom/alipay/euler/andfix/patch/PatchManager;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatches(Z)V

    .line 498
    invoke-static {}, Lcom/alipay/instantrun/compat/AInstantRunManager;->getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/alipay/instantrun/compat/AInstantRunManager;->cleanPatches(Z)V

    .line 499
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result p1

    .line 500
    if-eqz p1, :cond_6

    .line 501
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object p1

    invoke-virtual {p1, v9, v10}, Lcom/alipay/dexpatch/DexPatchManager;->cleanPatches(ZZ)V

    .line 505
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;

    invoke-static {p1, v10}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->setNeedRestart(Landroid/content/Context;Z)V

    .line 506
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 509
    :goto_4
    if-nez v9, :cond_7

    if-eqz v10, :cond_8

    .line 510
    :cond_7
    nop

    .line 511
    nop

    .line 512
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor$2;

    invoke-direct {v1, p0, v9, v10}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor$2;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;ZZ)V

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "delayKillProcess"

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 525
    :cond_8
    return v11

    .line 427
    :cond_9
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No need to rollback hotpatch: curHotpatchVersion="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return v9
.end method
