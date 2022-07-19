.class public Lcom/ta/utdid2/device/UTUtdidHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dePack(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pPackedUtdid"    # Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/AESUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pack([B)Ljava/lang/String;
    .locals 1
    .param p1, "pUtdid"    # [B

    .line 15
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/AESUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public packUtdidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pUtdid"    # Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/AESUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
