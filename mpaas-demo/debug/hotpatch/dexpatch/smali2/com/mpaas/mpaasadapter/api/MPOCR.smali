.class public Lcom/mpaas/mpaasadapter/api/MPOCR;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startDetectBankCard(Lcom/mpaas/ocr/api/DetectCallback;)V
    .locals 0
    .param p0, "callback"    # Lcom/mpaas/ocr/api/DetectCallback;

    .line 15
    invoke-static {p0}, Lcom/mpaas/ocr/api/OCRDetectApi;->startDetectBankCard(Lcom/mpaas/ocr/api/DetectCallback;)V

    .line 16
    return-void
.end method

.method public static startDetectIDCardBack(Lcom/mpaas/ocr/api/DetectCallback;)V
    .locals 0
    .param p0, "callback"    # Lcom/mpaas/ocr/api/DetectCallback;

    .line 27
    invoke-static {p0}, Lcom/mpaas/ocr/api/OCRDetectApi;->startDetectIDCardBack(Lcom/mpaas/ocr/api/DetectCallback;)V

    .line 28
    return-void
.end method

.method public static startDetectIDCardFront(Lcom/mpaas/ocr/api/DetectCallback;)V
    .locals 0
    .param p0, "callback"    # Lcom/mpaas/ocr/api/DetectCallback;

    .line 21
    invoke-static {p0}, Lcom/mpaas/ocr/api/OCRDetectApi;->startDetectIDCardFront(Lcom/mpaas/ocr/api/DetectCallback;)V

    .line 22
    return-void
.end method
