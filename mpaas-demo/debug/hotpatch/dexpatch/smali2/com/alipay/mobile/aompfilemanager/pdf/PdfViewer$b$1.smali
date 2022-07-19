.class final Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b$1;
.super Ljava/lang/Thread;
.source "PdfViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;-><init>(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;

.field final synthetic b:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b$1;->b:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;

    iput-object p2, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b$1;->a:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b$1;->b:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;

    invoke-static {}, Lcom/alipay/mobile/aompfilemanager/pdf/c;->a()Lcom/alipay/mobile/aompfilemanager/pdf/c;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b$1;->b:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;

    iget-object v2, v2, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;

    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->a(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/aompfilemanager/pdf/c;->a(Ljava/lang/String;)Lcom/alipay/mobile/aompfilemanager/pdf/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;->a(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;Lcom/alipay/mobile/aompfilemanager/pdf/b;)Lcom/alipay/mobile/aompfilemanager/pdf/b;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b$1;->b:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;

    iget-object v0, v0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;

    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->b(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b$1;->b:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;

    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;->a(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;)V

    .line 86
    return-void
.end method
