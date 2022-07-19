.class final Lcom/uc/webview/export/internal/setup/bf$a;
.super Lcom/uc/webview/export/internal/setup/bs;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/setup/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Z

.field final c:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/uc/webview/export/internal/setup/bf;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/setup/bf;Lcom/uc/webview/export/internal/setup/UCSubSetupTask;Lcom/uc/webview/export/internal/setup/br;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bf$a;->d:Lcom/uc/webview/export/internal/setup/bf;

    .line 51
    invoke-direct {p0, p2, p3}, Lcom/uc/webview/export/internal/setup/bs;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;Lcom/uc/webview/export/internal/setup/br;)V

    .line 47
    const/4 p1, 0x0

    iput p1, p0, Lcom/uc/webview/export/internal/setup/bf$a;->a:I

    .line 60
    new-instance p1, Lcom/uc/webview/export/internal/setup/bg;

    invoke-direct {p1, p0}, Lcom/uc/webview/export/internal/setup/bg;-><init>(Lcom/uc/webview/export/internal/setup/bf$a;)V

    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bf$a;->c:Landroid/webkit/ValueCallback;

    .line 52
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bf$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    const-string p2, "VERIFY_POLICY"

    invoke-virtual {p1, p2}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/uc/webview/export/internal/setup/bf$a;->a:I

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bf$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 57
    const-string p2, "sdk_setup"

    invoke-virtual {p1, p2}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/lang/Boolean;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/uc/webview/export/internal/setup/bf$a;->b:Z

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/bf$a;)V
    .locals 6

    .line 46
    nop

    .line 4164
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bf$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    const-string v1, "sdk_setup"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/lang/Boolean;)Z

    move-result v0

    .line 4165
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 5039
    sget v0, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    .line 4170
    sget v2, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    if-eq v0, v2, :cond_0

    .line 4171
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v0

    new-array v1, v1, [Lcom/uc/webview/export/internal/setup/ae$b;

    const/4 v2, 0x0

    sget-object v3, Lcom/uc/webview/export/internal/setup/ae$b;->e:Lcom/uc/webview/export/internal/setup/ae$b;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/ae;->a([Lcom/uc/webview/export/internal/setup/ae$b;)V

    .line 4174
    :cond_0
    nop

    .line 6039
    sget v0, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    .line 4175
    sget-object v1, Lcom/uc/webview/export/internal/setup/ae$b;->f:Lcom/uc/webview/export/internal/setup/ae$b;

    new-instance v2, Lcom/uc/webview/export/internal/setup/ae$a;

    .line 4177
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/uc/webview/export/internal/setup/bl;

    invoke-direct {v4, p0}, Lcom/uc/webview/export/internal/setup/bl;-><init>(Lcom/uc/webview/export/internal/setup/bf$a;)V

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/bf$a;->c:Landroid/webkit/ValueCallback;

    invoke-direct {v2, v3, v4, v5}, Lcom/uc/webview/export/internal/setup/ae$a;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bf$a;->c:Landroid/webkit/ValueCallback;

    .line 4174
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/uc/webview/export/internal/setup/bf$a;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    .line 46
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/bf$a;)V
    .locals 6

    .line 7039
    sget v0, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    .line 6206
    sget v1, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    if-eq v0, v1, :cond_0

    .line 6207
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/uc/webview/export/internal/setup/ae$b;

    const/4 v2, 0x0

    sget-object v3, Lcom/uc/webview/export/internal/setup/ae$b;->e:Lcom/uc/webview/export/internal/setup/ae$b;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/ae;->a([Lcom/uc/webview/export/internal/setup/ae$b;)V

    .line 6210
    :cond_0
    iget v0, p0, Lcom/uc/webview/export/internal/setup/bf$a;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 6211
    nop

    .line 8039
    sget v0, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    .line 6212
    sget-object v1, Lcom/uc/webview/export/internal/setup/ae$b;->g:Lcom/uc/webview/export/internal/setup/ae$b;

    new-instance v2, Lcom/uc/webview/export/internal/setup/ae$a;

    .line 6214
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/uc/webview/export/internal/setup/bm;

    invoke-direct {v4, p0}, Lcom/uc/webview/export/internal/setup/bm;-><init>(Lcom/uc/webview/export/internal/setup/bf$a;)V

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/bf$a;->c:Landroid/webkit/ValueCallback;

    invoke-direct {v2, v3, v4, v5}, Lcom/uc/webview/export/internal/setup/ae$a;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bf$a;->c:Landroid/webkit/ValueCallback;

    .line 6211
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/uc/webview/export/internal/setup/bf$a;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    .line 46
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/uc/webview/export/internal/setup/bf$a;)V
    .locals 6

    .line 9039
    sget v0, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    .line 8227
    sget v1, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    if-eq v0, v1, :cond_0

    .line 8228
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/uc/webview/export/internal/setup/ae$b;

    const/4 v2, 0x0

    sget-object v3, Lcom/uc/webview/export/internal/setup/ae$b;->e:Lcom/uc/webview/export/internal/setup/ae$b;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/ae;->a([Lcom/uc/webview/export/internal/setup/ae$b;)V

    .line 8231
    :cond_0
    iget v0, p0, Lcom/uc/webview/export/internal/setup/bf$a;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    .line 8232
    nop

    .line 10039
    sget v0, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    .line 8233
    sget-object v1, Lcom/uc/webview/export/internal/setup/ae$b;->h:Lcom/uc/webview/export/internal/setup/ae$b;

    new-instance v2, Lcom/uc/webview/export/internal/setup/ae$a;

    .line 8235
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/uc/webview/export/internal/setup/bn;

    invoke-direct {v4, p0}, Lcom/uc/webview/export/internal/setup/bn;-><init>(Lcom/uc/webview/export/internal/setup/bf$a;)V

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/bf$a;->c:Landroid/webkit/ValueCallback;

    invoke-direct {v2, v3, v4, v5}, Lcom/uc/webview/export/internal/setup/ae$a;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bf$a;->c:Landroid/webkit/ValueCallback;

    .line 8232
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/uc/webview/export/internal/setup/bf$a;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 7

    .line 84
    const/16 v0, 0x12a

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 85
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bf$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    const-string v1, "CONTEXT"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bf$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    const-string v1, "VERIFY_POLICY"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    iget v0, p0, Lcom/uc/webview/export/internal/setup/bf$a;->a:I

    and-int/lit8 v0, v0, 0x4

    const/16 v1, 0x12b

    if-eqz v0, :cond_0

    .line 91
    nop

    .line 1039
    sget v0, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    .line 92
    sget-object v2, Lcom/uc/webview/export/internal/setup/ae$b;->d:Lcom/uc/webview/export/internal/setup/ae$b;

    new-instance v3, Lcom/uc/webview/export/internal/setup/ae$a;

    .line 94
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/uc/webview/export/internal/setup/bh;

    invoke-direct {v5, p0}, Lcom/uc/webview/export/internal/setup/bh;-><init>(Lcom/uc/webview/export/internal/setup/bf$a;)V

    iget-object v6, p0, Lcom/uc/webview/export/internal/setup/bf$a;->c:Landroid/webkit/ValueCallback;

    invoke-direct {v3, v4, v5, v6}, Lcom/uc/webview/export/internal/setup/ae$a;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/bf$a;->c:Landroid/webkit/ValueCallback;

    .line 91
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/uc/webview/export/internal/setup/bf$a;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    .line 103
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 104
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_0
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method protected final b()V
    .locals 6

    .line 111
    const/16 v0, 0x12c

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 114
    const/16 v0, 0x12e

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 115
    nop

    .line 2039
    sget v0, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    .line 116
    sget-object v1, Lcom/uc/webview/export/internal/setup/ae$b;->b:Lcom/uc/webview/export/internal/setup/ae$b;

    new-instance v2, Lcom/uc/webview/export/internal/setup/ae$a;

    .line 118
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/uc/webview/export/internal/setup/bi;

    invoke-direct {v4, p0}, Lcom/uc/webview/export/internal/setup/bi;-><init>(Lcom/uc/webview/export/internal/setup/bf$a;)V

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/bf$a;->c:Landroid/webkit/ValueCallback;

    invoke-direct {v2, v3, v4, v5}, Lcom/uc/webview/export/internal/setup/ae$a;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bf$a;->c:Landroid/webkit/ValueCallback;

    .line 115
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/uc/webview/export/internal/setup/bf$a;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    .line 130
    const/16 v0, 0x12f

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 131
    iget v0, p0, Lcom/uc/webview/export/internal/setup/bf$a;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 132
    nop

    .line 3039
    sget v0, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    .line 133
    sget-object v1, Lcom/uc/webview/export/internal/setup/ae$b;->c:Lcom/uc/webview/export/internal/setup/ae$b;

    new-instance v2, Lcom/uc/webview/export/internal/setup/ae$a;

    .line 135
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/uc/webview/export/internal/setup/bj;

    invoke-direct {v4, p0}, Lcom/uc/webview/export/internal/setup/bj;-><init>(Lcom/uc/webview/export/internal/setup/bf$a;)V

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/bf$a;->c:Landroid/webkit/ValueCallback;

    invoke-direct {v2, v3, v4, v5}, Lcom/uc/webview/export/internal/setup/ae$a;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bf$a;->c:Landroid/webkit/ValueCallback;

    .line 132
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/uc/webview/export/internal/setup/bf$a;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    .line 145
    :cond_0
    const/16 v0, 0x130

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 146
    nop

    .line 4039
    sget v0, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    .line 147
    sget-object v1, Lcom/uc/webview/export/internal/setup/ae$b;->e:Lcom/uc/webview/export/internal/setup/ae$b;

    new-instance v2, Lcom/uc/webview/export/internal/setup/ae$a;

    .line 149
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/uc/webview/export/internal/setup/bk;

    invoke-direct {v4, p0}, Lcom/uc/webview/export/internal/setup/bk;-><init>(Lcom/uc/webview/export/internal/setup/bf$a;)V

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/bf$a;->c:Landroid/webkit/ValueCallback;

    invoke-direct {v2, v3, v4, v5}, Lcom/uc/webview/export/internal/setup/ae$a;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bf$a;->c:Landroid/webkit/ValueCallback;

    .line 146
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/uc/webview/export/internal/setup/bf$a;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    .line 160
    const/16 v0, 0x12d

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 161
    return-void
.end method
