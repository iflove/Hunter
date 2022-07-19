.class public Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;
.super Lcom/alibaba/sqlcrypto/CursorWrapper;
.source "CrossProcessCursorWrapper.java"

# interfaces
.implements Lcom/alibaba/sqlcrypto/CrossProcessCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 41
    return-void
.end method


# virtual methods
.method public fillWindow(ILcom/alibaba/sqlcrypto/CursorWindow;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "window"    # Lcom/alibaba/sqlcrypto/CursorWindow;

    .line 45
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/alibaba/sqlcrypto/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/alibaba/sqlcrypto/CrossProcessCursor;

    .line 47
    invoke-interface {v0, p1, p2}, Lcom/alibaba/sqlcrypto/CrossProcessCursor;->fillWindow(ILcom/alibaba/sqlcrypto/CursorWindow;)V

    .line 48
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, p1, p2}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILcom/alibaba/sqlcrypto/CursorWindow;)V

    .line 52
    return-void
.end method

.method public getWindow()Lcom/alibaba/sqlcrypto/CursorWindow;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/alibaba/sqlcrypto/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/alibaba/sqlcrypto/CrossProcessCursor;

    .line 58
    invoke-interface {v0}, Lcom/alibaba/sqlcrypto/CrossProcessCursor;->getWindow()Lcom/alibaba/sqlcrypto/CursorWindow;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 66
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/alibaba/sqlcrypto/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/alibaba/sqlcrypto/CrossProcessCursor;

    .line 68
    invoke-interface {v0, p1, p2}, Lcom/alibaba/sqlcrypto/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0

    .line 71
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
