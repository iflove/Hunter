.class final Lcom/androidz/mPaas_demo/FirstFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "FirstFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidz/mPaas_demo/FirstFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidz/mPaas_demo/FirstFragment;


# direct methods
.method constructor <init>(Lcom/androidz/mPaas_demo/FirstFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/androidz/mPaas_demo/FirstFragment$onViewCreated$1;->this$0:Lcom/androidz/mPaas_demo/FirstFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "it"    # Landroid/view/View;

    .line 30
    invoke-static {}, Lcom/androidz/mPaas_demo/LogT;->fix()V

    .line 31
    iget-object v0, p0, Lcom/androidz/mPaas_demo/FirstFragment$onViewCreated$1;->this$0:Lcom/androidz/mPaas_demo/FirstFragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 32
    return-void
.end method
