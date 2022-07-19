.class public Lcom/uc/webview/export/internal/setup/ah;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/setup/ah$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RETURN_TYPE:",
        "Lcom/uc/webview/export/internal/setup/UCSetupTask<",
        "TRETURN_TYPE;TCA",
        "LLBACK_TYPE;",
        ">;CA",
        "LLBACK_TYPE:Lcom/uc/webview/export/internal/setup/UCSetupTask<",
        "TRETURN_TYPE;TCA",
        "LLBACK_TYPE;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static d:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field public final b:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "TCA",
            "LLBACK_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "TCA",
            "LLBACK_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/uc/webview/export/internal/setup/UCSetupTask;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/io/File;

.field private g:Ljava/io/File;

.field private h:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/uc/webview/export/internal/setup/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/ah;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/uc/webview/export/internal/setup/UCSetupTask;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->a:Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/uc/webview/export/internal/setup/ai;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/ai;-><init>(Lcom/uc/webview/export/internal/setup/ah;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->b:Landroid/webkit/ValueCallback;

    .line 140
    new-instance v0, Lcom/uc/webview/export/internal/setup/aj;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/aj;-><init>(Lcom/uc/webview/export/internal/setup/ah;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->c:Landroid/webkit/ValueCallback;

    .line 103
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->f:Ljava/io/File;

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/setup/ah;->a(Lcom/uc/webview/export/internal/setup/UCSetupTask;)V

    .line 105
    nop

    .line 1122
    nop

    .line 1123
    const-string p1, "flags"

    invoke-static {p2, p1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1124
    invoke-static {p3}, Lcom/uc/webview/export/internal/utility/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1122
    invoke-static {p1, p2}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1125
    sget-object p2, Lcom/uc/webview/export/internal/setup/ah;->d:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "<init> flgDirFile.path: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    new-instance p2, Ljava/io/File;

    const-string p3, "b36ce8d879e33bc88f717f74617ea05a"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/ah;->f:Ljava/io/File;

    .line 1127
    new-instance p2, Ljava/io/File;

    const-string p3, "bd89426940609c9ae14e5ae90827201b"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/ah;->g:Ljava/io/File;

    .line 1128
    new-instance p2, Ljava/io/File;

    const-string p3, "51bfcd9dd2f1379936c4fbb3558a6e67"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/ah;->h:Ljava/io/File;

    .line 107
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/ah;)Ljava/io/File;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/ah;->g:Ljava/io/File;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThickSetupTask_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    .line 65
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    .line 66
    invoke-static {p0, v1}, Lcom/uc/webview/export/internal/setup/ah$a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/ah;)Ljava/io/File;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/ah;->f:Ljava/io/File;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/uc/webview/export/internal/setup/ah;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/uc/webview/export/internal/setup/ah;)Ljava/io/File;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/ah;->h:Ljava/io/File;

    return-object p0
.end method

.method static synthetic d(Lcom/uc/webview/export/internal/setup/ah;)V
    .locals 6

    .line 19
    nop

    .line 1150
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1151
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ah;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1152
    nop

    .line 1153
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ah;->g:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 1154
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1156
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ah;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/ah;->h:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0x5265c00

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 1159
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ah;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    goto :goto_0

    .line 1160
    :catchall_0
    move-exception v1

    .line 1163
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ah;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1164
    :catchall_1
    move-exception v1

    .line 1165
    :goto_1
    goto :goto_2

    .line 1168
    :cond_0
    const-string v0, "2"

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->a:Ljava/lang/String;

    .line 1169
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    const-string v1, "disable_multi_unknown_crash"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1170
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1171
    :cond_1
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/ah;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    const-string v0, "crash_repeat"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->callback(Ljava/lang/String;)V

    .line 1173
    :cond_2
    return-void

    .line 1177
    :cond_3
    goto :goto_3

    .line 1179
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 1180
    goto :goto_3

    .line 1183
    :cond_5
    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v0, :cond_6

    .line 1184
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    const-string v1, "VERIFY_POLICY"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1185
    if-eqz v0, :cond_6

    .line 1186
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ah;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 1190
    :cond_6
    if-eqz v3, :cond_7

    const-string v0, "1"

    goto :goto_4

    :cond_7
    const-string v0, "0"

    :goto_4
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->a:Ljava/lang/String;

    .line 1191
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/ah;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    if-eqz v3, :cond_8

    const-string v0, "crash_seen"

    goto :goto_5

    :cond_8
    const-string v0, "crash_none"

    :goto_5
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->callback(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method static synthetic e(Lcom/uc/webview/export/internal/setup/ah;)V
    .locals 1

    .line 1196
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1199
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/ah;->f:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    return-void

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1203
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/ah;->h:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    return-void

    .line 1204
    :cond_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1206
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/ah;->g:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    :cond_2
    return-void

    .line 1209
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    return-void
.end method

.method static synthetic f(Lcom/uc/webview/export/internal/setup/ah;)V
    .locals 0

    .line 19
    nop

    .line 1214
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/ah;->a()V

    .line 19
    return-void
.end method

.method static synthetic g(Lcom/uc/webview/export/internal/setup/ah;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/ah;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    .line 224
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 226
    return-void

    .line 225
    :catchall_1
    move-exception v0

    .line 229
    return-void
.end method

.method public final a(Lcom/uc/webview/export/internal/setup/UCSetupTask;)V
    .locals 2

    .line 110
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->e:Ljava/lang/ref/WeakReference;

    .line 113
    sget-object p1, Lcom/uc/webview/export/internal/setup/ah;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UCSetupt.class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ah;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_1
    return-void
.end method
