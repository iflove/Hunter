.class public Lcom/uc/webview/export/internal/utility/Log;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field private static a:Z

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/uc/webview/export/cyclone/UCLogger;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/webview/export/internal/utility/Log;->a:Z

    .line 21
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/uc/webview/export/internal/utility/Log;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    sput-boolean v0, Lcom/uc/webview/export/internal/utility/Log;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;
    .locals 1

    .line 32
    invoke-static {p0, p1}, Lcom/uc/webview/export/cyclone/UCLogger;->enable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    sget-object p1, Lcom/uc/webview/export/internal/utility/Log;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/cyclone/UCLogger;

    return-object p0

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 37
    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-object v0

    .line 40
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 53
    const-string v0, "d"

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 57
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 67
    const-string v0, "d"

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 71
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 80
    const-string v0, "e"

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 84
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 94
    const-string v0, "e"

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 98
    :cond_0
    return-void
.end method

.method public static enableUCLogger()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/Log;->a:Z

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 107
    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 111
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 120
    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 124
    :cond_0
    return-void
.end method

.method public static rInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 164
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/uc/webview/export/internal/utility/Log;->rInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    return-void
.end method

.method public static rInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 168
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/Log;->c:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-static {p0, p1, p2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/uc/webview/export/cyclone/UCCyclone;->logExtraTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 173
    const-string v0, "i"

    invoke-static {v0, p0, p1, p2}, Lcom/uc/webview/export/cyclone/UCLogger;->addLogItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    return-void
.end method

.method public static setPrintLog(Z[Ljava/lang/Object;)V
    .locals 2

    .line 154
    sput-boolean p0, Lcom/uc/webview/export/internal/utility/Log;->a:Z

    .line 156
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v0

    .line 158
    invoke-static {p1}, Lcom/uc/webview/export/cyclone/UCLogger;->setup([Ljava/lang/Object;)V

    .line 159
    const/4 p0, 0x1

    sput-boolean p0, Lcom/uc/webview/export/internal/utility/Log;->c:Z

    .line 161
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 133
    const-string v0, "w"

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 137
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 147
    const-string v0, "w"

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 151
    :cond_0
    return-void
.end method
