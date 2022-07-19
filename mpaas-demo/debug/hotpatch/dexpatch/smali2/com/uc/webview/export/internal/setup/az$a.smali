.class final Lcom/uc/webview/export/internal/setup/az$a;
.super Lcom/uc/webview/export/internal/setup/bs;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/setup/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/uc/webview/export/internal/setup/az;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/setup/az;Lcom/uc/webview/export/internal/setup/UCSubSetupTask;Lcom/uc/webview/export/internal/setup/br;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/az$a;->b:Lcom/uc/webview/export/internal/setup/az;

    .line 69
    invoke-direct {p0, p2, p3}, Lcom/uc/webview/export/internal/setup/bs;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;Lcom/uc/webview/export/internal/setup/br;)V

    .line 72
    new-instance p1, Lcom/uc/webview/export/internal/setup/ba;

    invoke-direct {p1, p0}, Lcom/uc/webview/export/internal/setup/ba;-><init>(Lcom/uc/webview/export/internal/setup/az$a;)V

    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/az$a;->a:Landroid/webkit/ValueCallback;

    .line 70
    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 9

    .line 93
    const/16 v0, 0x12a

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 94
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/az$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    const-string v1, "CONTEXT"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 95
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/az$a;->b:Lcom/uc/webview/export/internal/setup/az;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/az;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "sdk_setup"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/lang/Boolean;)Z

    move-result v1

    .line 98
    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 99
    sget v3, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    sget-object v4, Lcom/uc/webview/export/internal/setup/ae$b;->f:Lcom/uc/webview/export/internal/setup/ae$b;

    new-instance v5, Lcom/uc/webview/export/internal/setup/ae$a;

    .line 102
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/uc/webview/export/internal/setup/bb;

    invoke-direct {v7, p0, v0}, Lcom/uc/webview/export/internal/setup/bb;-><init>(Lcom/uc/webview/export/internal/setup/az$a;Landroid/content/Context;)V

    iget-object v8, p0, Lcom/uc/webview/export/internal/setup/az$a;->a:Landroid/webkit/ValueCallback;

    invoke-direct {v5, v6, v7, v8}, Lcom/uc/webview/export/internal/setup/ae$a;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    iget-object v6, p0, Lcom/uc/webview/export/internal/setup/az$a;->a:Landroid/webkit/ValueCallback;

    .line 99
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/uc/webview/export/internal/setup/az$a;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    .line 112
    :cond_0
    nop

    .line 1039
    sget v3, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    .line 113
    sget-object v4, Lcom/uc/webview/export/internal/setup/ae$b;->b:Lcom/uc/webview/export/internal/setup/ae$b;

    new-instance v5, Lcom/uc/webview/export/internal/setup/ae$a;

    .line 115
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/uc/webview/export/internal/setup/bc;

    invoke-direct {v7, p0, v0, v1}, Lcom/uc/webview/export/internal/setup/bc;-><init>(Lcom/uc/webview/export/internal/setup/az$a;Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/az$a;->a:Landroid/webkit/ValueCallback;

    invoke-direct {v5, v6, v7, v0}, Lcom/uc/webview/export/internal/setup/ae$a;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/az$a;->a:Landroid/webkit/ValueCallback;

    .line 112
    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/uc/webview/export/internal/setup/az$a;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    .line 124
    const/16 v0, 0x12b

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 125
    return v2
.end method

.method protected final b()V
    .locals 8

    .line 130
    const/16 v0, 0x12c

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 131
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/az$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    const-string v1, "CONTEXT"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 132
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/az$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    const-string v2, "VERIFY_POLICY"

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 133
    const/16 v2, 0x12e

    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 135
    const/16 v2, 0x12f

    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 136
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 137
    nop

    .line 2039
    sget v2, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    .line 138
    sget-object v3, Lcom/uc/webview/export/internal/setup/ae$b;->g:Lcom/uc/webview/export/internal/setup/ae$b;

    new-instance v4, Lcom/uc/webview/export/internal/setup/ae$a;

    .line 140
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/uc/webview/export/internal/setup/bd;

    invoke-direct {v6, p0, v0, v1}, Lcom/uc/webview/export/internal/setup/bd;-><init>(Lcom/uc/webview/export/internal/setup/az$a;Landroid/content/Context;Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/uc/webview/export/internal/setup/az$a;->a:Landroid/webkit/ValueCallback;

    invoke-direct {v4, v5, v6, v7}, Lcom/uc/webview/export/internal/setup/ae$a;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/az$a;->a:Landroid/webkit/ValueCallback;

    .line 137
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/uc/webview/export/internal/setup/az$a;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    .line 149
    :cond_0
    const/16 v2, 0x130

    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 150
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    .line 151
    nop

    .line 3039
    sget v2, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    .line 152
    sget-object v3, Lcom/uc/webview/export/internal/setup/ae$b;->h:Lcom/uc/webview/export/internal/setup/ae$b;

    new-instance v4, Lcom/uc/webview/export/internal/setup/ae$a;

    .line 154
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/uc/webview/export/internal/setup/be;

    invoke-direct {v6, p0, v0, v1}, Lcom/uc/webview/export/internal/setup/be;-><init>(Lcom/uc/webview/export/internal/setup/az$a;Landroid/content/Context;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/az$a;->a:Landroid/webkit/ValueCallback;

    invoke-direct {v4, v5, v6, v0}, Lcom/uc/webview/export/internal/setup/ae$a;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/az$a;->a:Landroid/webkit/ValueCallback;

    .line 151
    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/uc/webview/export/internal/setup/az$a;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    .line 163
    :cond_1
    const/16 v0, 0x12d

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 164
    return-void
.end method
