.class public Lcom/ime/framework/common/SamsungIMEInputConnection;
.super Ljava/lang/Object;
.source "SamsungIMEInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field private static mIC:Landroid/view/inputmethod/InputConnection;

.field private static sInstance:Lcom/ime/framework/common/SamsungIMEInputConnection;


# direct methods
.method private constructor <init>(Landroid/view/inputmethod/InputConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    return-void
.end method

.method public static declared-synchronized newInstance(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    const-class v1, Lcom/ime/framework/common/SamsungIMEInputConnection;

    monitor-enter v1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->sInstance:Lcom/ime/framework/common/SamsungIMEInputConnection;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ime/framework/common/SamsungIMEInputConnection;

    invoke-direct {v0, p0}, Lcom/ime/framework/common/SamsungIMEInputConnection;-><init>(Landroid/view/inputmethod/InputConnection;)V

    sput-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->sInstance:Lcom/ime/framework/common/SamsungIMEInputConnection;

    :goto_1
    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->sInstance:Lcom/ime/framework/common/SamsungIMEInputConnection;

    goto :goto_0

    :cond_1
    sput-object p0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    move-result v0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public endBatchEdit()Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 3

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "[SIIC] getCursorCapsMode start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME"

    const-string v2, "[SIIC] getCursorCapsMode done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 3

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "[SIIC] getExtractedText start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1, p2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME"

    const-string v2, "[SIIC] getExtractedText done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 3

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "[SIIC] getSelectedText start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME"

    const-string v2, "[SIIC] getSelectedText done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 3

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "[SIIC] getTextAfterCursor start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME"

    const-string v2, "[SIIC] getTextAfterCursor done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 3

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "[SIIC] getTextBeforeCursor start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME"

    const-string v2, "[SIIC] getTextBeforeCursor done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public performContextMenuAction(I)Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    move-result v0

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    move-result v0

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    move-result v0

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public setSelection(II)Z
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SamsungIMEInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v0

    return v0
.end method
