.class final Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b$2;
.super Ljava/lang/Object;
.source "PdfViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b$2;->a:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b$2;->a:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;

    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;->notifyDataSetChanged()V

    .line 96
    return-void
.end method
