.class final Lcom/alipay/mobile/nebulacore/Nebula$4;
.super Ljava/lang/Object;
.source "Nebula.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/Nebula;->initInfo(Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/Nebula$4;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/Nebula$4;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/Nebula$4;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/Nebula$4;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/Nebula;->a(Ljava/lang/String;Landroid/app/Activity;)V

    .line 813
    return-void
.end method
