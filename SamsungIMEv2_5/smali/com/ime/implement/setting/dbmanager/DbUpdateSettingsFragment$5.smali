.class Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$5;
.super Ljava/lang/Object;
.source "DbUpdateSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$5;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$5;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    const/4 v1, 0x1

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->updateScreenByNetworkStatus(Z)V
    invoke-static {v0, v1}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$800(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;Z)V

    return-void
.end method
