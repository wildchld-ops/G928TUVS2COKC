.class Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$1;
.super Ljava/lang/Object;
.source "SettingBackupRestoreReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver;

.field final synthetic val$filepath:Ljava/lang/String;

.field final synthetic val$mSettingBnR:Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;

.field final synthetic val$requestAction:I

.field final synthetic val$saveKey:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver;Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$1;->this$0:Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver;

    iput-object p2, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$1;->val$mSettingBnR:Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;

    iput-object p3, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$1;->val$filepath:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$1;->val$source:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$1;->val$saveKey:Ljava/lang/String;

    iput p6, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$1;->val$requestAction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$1;->val$mSettingBnR:Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;

    iget-object v1, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$1;->val$filepath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$1;->val$source:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$1;->val$saveKey:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$1;->val$requestAction:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->settingBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
