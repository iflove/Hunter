.class final Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat$2;
.super Ljava/lang/Object;
.source "LiteNebulaXCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat;->initInLite(Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessPipeline;->litePipelineRun(Landroid/content/Context;)V

    .line 246
    return-void
.end method
