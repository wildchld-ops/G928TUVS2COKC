.class public Lcom/android/systemui/recent/ScreenPinningRequestDialog;
.super Ljava/lang/Object;
.source "ScreenPinningRequestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final STATUSBAR_ANIMATING:Ljava/lang/String; = "com.android.systemui.statusbar.ANIMATING"

.field private static final TAG:Ljava/lang/String; = "ScreenPinningRequestDialog"

.field private static mDialog:Landroid/app/AlertDialog;


# instance fields
.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field public final mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/systemui/recent/ScreenPinningRequestDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog$1;-><init>(Lcom/android/systemui/recent/ScreenPinningRequestDialog;)V

    iput-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public clearPrompt()V
    .locals 2

    sget-object v0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string v0, "ScreenPinningRequestDialog"

    const-string v1, "clearPrompt"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->startLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->clearPrompt()V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->clearPrompt()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showPrompt()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->clearPrompt()V

    const-string v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f3

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v9, :cond_0

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mIsWIFI:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f7

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04fb

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v7, 0x5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0d04f0

    invoke-virtual {v1, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0d04f1

    invoke-virtual {v1, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    sput-object v9, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    sget-object v9, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    sget-object v9, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    sget-object v9, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f6

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_1
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04fa

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    goto/16 :goto_1

    :cond_3
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f8

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method
