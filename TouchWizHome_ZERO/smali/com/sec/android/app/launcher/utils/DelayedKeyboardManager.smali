.class public Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;
.super Ljava/lang/Object;
.source "DelayedKeyboardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager$DelayedKeyboardManagerProvider;
    }
.end annotation


# instance fields
.field private mDelay:I

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsKeyboardVisible:Z

.field private mProvider:Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager$DelayedKeyboardManagerProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager$DelayedKeyboardManagerProvider;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->mProvider:Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager$DelayedKeyboardManagerProvider;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->mDelay:I

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public forceKeyboardOff(Landroid/widget/EditText;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->mIsKeyboardVisible:Z

    :cond_0
    return-void
.end method

.method public forceKeyboardOn(Landroid/widget/EditText;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->mIsKeyboardVisible:Z

    :cond_0
    return-void
.end method

.method public getDelay()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->mDelay:I

    return v0
.end method

.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->mProvider:Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager$DelayedKeyboardManagerProvider;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->mProvider:Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager$DelayedKeyboardManagerProvider;

    invoke-interface {v2}, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager$DelayedKeyboardManagerProvider;->getFocus()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->mProvider:Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager$DelayedKeyboardManagerProvider;

    invoke-interface {v2}, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager$DelayedKeyboardManagerProvider;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->mIsKeyboardVisible:Z

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->mIsKeyboardVisible:Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->forceKeyboardOn(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->forceKeyboardOff(Landroid/widget/EditText;)V

    goto :goto_0
.end method
