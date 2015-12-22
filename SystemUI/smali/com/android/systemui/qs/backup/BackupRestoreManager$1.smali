.class Lcom/android/systemui/qs/backup/BackupRestoreManager$1;
.super Ljava/lang/Object;
.source "BackupRestoreManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/backup/BackupRestoreManager;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/backup/BackupRestoreManager;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/backup/BackupRestoreManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager$1;->this$0:Lcom/android/systemui/qs/backup/BackupRestoreManager;

    iput-object p2, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager$1;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager$1;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager$1;->this$0:Lcom/android/systemui/qs/backup/BackupRestoreManager;

    iget-object v1, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager$1;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager$1;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager$1;->val$source:Ljava/lang/String;

    # invokes: Lcom/android/systemui/qs/backup/BackupRestoreManager;->backupQsOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/qs/backup/BackupRestoreManager;->access$000(Lcom/android/systemui/qs/backup/BackupRestoreManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
