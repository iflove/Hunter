.class final Lcom/linearallocpatch/c$1;
.super Ljava/lang/Object;
.source "LinearAllocPatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linearallocpatch/c;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/linearallocpatch/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/linearallocpatch/c$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/linearallocpatch/c$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 210
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    const-string v0, "sleep interrupted"

    invoke-static {v0}, Lcom/linearallocpatch/c;->a(Ljava/lang/String;)V

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/linearallocpatch/c$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/linearallocpatch/c$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/linearallocpatch/c;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 215
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/linearallocpatch/c$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/linearallocpatch/c$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/linearallocpatch/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    :cond_0
    return-void
.end method
