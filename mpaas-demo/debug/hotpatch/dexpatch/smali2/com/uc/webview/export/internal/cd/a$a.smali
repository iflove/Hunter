.class final Lcom/uc/webview/export/internal/cd/a$a;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/cd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-string v0, "InnerImpl"

    sput-object v0, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/cd/a$a;->b:Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    .line 72
    sput-object v0, Lcom/uc/webview/export/internal/cd/a$a;->d:Ljava/util/Map;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/webview/export/internal/cd/a$a;->e:Z

    return-void
.end method

.method public static a()V
    .locals 10

    .line 110
    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->d:Ljava/util/Map;

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/uc/webview/export/internal/cd/a$a;->e:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 113
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/uc/webview/export/internal/cd/a$a;->d:Ljava/util/Map;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/uc/webview/export/internal/cd/a$a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_2

    .line 115
    nop

    .line 117
    const/4 v1, 0x1

    :try_start_1
    sget-object v2, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".parser sCD : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "cd_pp_co"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    new-instance v3, Lorg/json/JSONObject;

    sget-object v4, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 122
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 124
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 125
    sget-object v7, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ".parser key : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    goto :goto_0

    .line 128
    :cond_1
    sput-object v2, Lcom/uc/webview/export/internal/cd/a$a;->d:Ljava/util/Map;

    .line 129
    const-string v2, "cd_pp_su"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    goto :goto_2

    .line 136
    :catchall_0
    move-exception v2

    .line 137
    nop

    .line 138
    :try_start_2
    sget-object v3, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".parser cd exception java.lang.Throwable "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    :try_start_3
    sget-object v2, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    const-string v3, ".parser faulure!!"

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sput-boolean v1, Lcom/uc/webview/export/internal/cd/a$a;->e:Z

    .line 143
    const-string v1, "cd_pp_fa"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 133
    :catch_0
    move-exception v2

    .line 134
    nop

    .line 135
    :try_start_4
    sget-object v3, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".parser cd exception org.json.JSONException "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 141
    :try_start_5
    sget-object v2, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    const-string v3, ".parser faulure!!"

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sput-boolean v1, Lcom/uc/webview/export/internal/cd/a$a;->e:Z

    .line 143
    const-string v1, "cd_pp_fa"

    :goto_1
    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 130
    :catch_1
    move-exception v2

    .line 131
    nop

    .line 132
    :try_start_6
    sget-object v3, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".parser cd exception java.lang.ClassCastException "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 141
    :try_start_7
    sget-object v2, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    const-string v3, ".parser faulure!!"

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sput-boolean v1, Lcom/uc/webview/export/internal/cd/a$a;->e:Z

    .line 143
    const-string v1, "cd_pp_fa"

    goto :goto_1

    .line 140
    :catchall_1
    move-exception v2

    .line 141
    sget-object v3, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    const-string v4, ".parser faulure!!"

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sput-boolean v1, Lcom/uc/webview/export/internal/cd/a$a;->e:Z

    .line 143
    const-string v1, "cd_pp_fa"

    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 111
    :cond_3
    :goto_3
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 76
    const-string v0, "JSON_CMD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    const/16 v1, 0x8

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    .line 81
    const/4 p0, 0x0

    sput-object p0, Lcom/uc/webview/export/internal/cd/a$a;->d:Ljava/util/Map;

    .line 82
    const/4 p0, 0x0

    sput-boolean p0, Lcom/uc/webview/export/internal/cd/a$a;->e:Z

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    new-instance p0, Lcom/uc/webview/export/internal/cd/b;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/cd/b;-><init>()V

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/i;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    return-void

    .line 90
    :catch_0
    move-exception p0

    .line 91
    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    const-string v1, "parser"

    invoke-static {v0, v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    return-void

    .line 83
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 96
    invoke-static {}, Lcom/uc/webview/export/internal/cd/a$a;->a()V

    .line 98
    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v2, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/uc/webview/export/internal/cd/a$a;->d:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 103
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 105
    :cond_1
    monitor-exit v0

    .line 106
    return-object v1

    .line 105
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 99
    :cond_2
    :goto_0
    return-object v1
.end method
