.class public final Lcom/uc/webview/export/internal/setup/i;
.super Lcom/uc/webview/export/internal/setup/a;
.source "U4Source"


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/a;-><init>()V

    .line 24
    const-string v0, "InitCoreEngineJob"

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/i;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Landroid/util/Pair;

    .line 26
    const/16 v1, 0x105

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 27
    const/16 v2, 0x106

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/i;->b:Landroid/util/Pair;

    .line 28
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .line 1044
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1046
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->c:Lcom/uc/webview/export/internal/setup/br;

    .line 1047
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1070
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1047
    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1050
    :cond_0
    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    const-string v6, "ucm_corelib_path"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->resDirPath:Ljava/lang/String;

    const-string v6, "ucm_paks_resource_dir"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    if-eqz v5, :cond_1

    .line 1053
    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v6, "ucm_dex_path"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v5, "ucm_odex_path"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    :cond_1
    const-string v1, "PRIVATE_DATA_DIRECTORY_SUFFIX"

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1062
    if-eqz v1, :cond_2

    .line 1063
    const-string v5, "ucm_private_data_dir_suffix"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    :cond_2
    const-string v1, "webview_multi_process"

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1070
    if-nez v1, :cond_3

    move-object v1, v4

    .line 1072
    :cond_3
    const-string v5, "webview_multi_process_fallback_timeout"

    invoke-static {v5}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1074
    if-nez v5, :cond_4

    move-object v5, v4

    .line 1076
    :cond_4
    const-string v6, "webview_multi_process_enable_service_speedup"

    invoke-static {v6}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 1078
    if-nez v6, :cond_5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1080
    :cond_5
    nop

    .line 1081
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1080
    const-string v7, "ucm_multi_process"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    nop

    .line 1083
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1082
    const-string v5, "ucm_multi_process_fallback_timeout"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    nop

    .line 1085
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1084
    const-string v5, "ucm_multi_process_enable_service_speedup"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    nop

    .line 1087
    const-string v1, "ucm_multi_process_enable_seccomp"

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "1"

    goto :goto_0

    :cond_6
    const-string v5, "0"

    .line 1086
    :goto_0
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    const-string v1, "gpu_process_mode"

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1092
    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    move-object v4, v1

    .line 1094
    :goto_1
    nop

    .line 1095
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1094
    const-string v4, "ucm_gpu_process_mode"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    sget-boolean v1, Lcom/uc/webview/export/internal/setup/af;->b:Z

    .line 1098
    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1097
    const-string v4, "ucm_skip_init_setting"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    sget-boolean v1, Lcom/uc/webview/export/internal/setup/af;->e:Z

    .line 1100
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1099
    const-string v4, "ucm_is_hardware_ac"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    nop

    .line 1103
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1102
    const-string v4, "ucm_sup"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    nop

    .line 33
    :goto_2
    nop

    .line 35
    const/16 v1, 0x232a

    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    aput-object v5, v4, v3

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/uc/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    nop

    .line 40
    const/4 v0, 0x3

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/af;->a(I[Ljava/lang/Object;)V

    .line 41
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xbbf

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method
