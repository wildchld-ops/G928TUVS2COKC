.class Lcom/android/phone/BackupRestoreReceiver$2;
.super Ljava/lang/Object;
.source "BackupRestoreReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BackupRestoreReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BackupRestoreReceiver;

.field final synthetic val$filepath:Ljava/lang/String;

.field final synthetic val$saveKey:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/BackupRestoreReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BackupRestoreReceiver$2;->this$0:Lcom/android/phone/BackupRestoreReceiver;

    iput-object p2, p0, Lcom/android/phone/BackupRestoreReceiver$2;->val$filepath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/BackupRestoreReceiver$2;->val$source:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/BackupRestoreReceiver$2;->val$saveKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver$2;->this$0:Lcom/android/phone/BackupRestoreReceiver;

    iget-object v1, p0, Lcom/android/phone/BackupRestoreReceiver$2;->val$filepath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/BackupRestoreReceiver$2;->val$source:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/BackupRestoreReceiver$2;->val$saveKey:Ljava/lang/String;

    # invokes: Lcom/android/phone/BackupRestoreReceiver;->restoreData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/BackupRestoreReceiver;->access$100(Lcom/android/phone/BackupRestoreReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
