.class Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$2;
.super Ljava/lang/Object;
.source "DbUpdatePrefrence.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$2;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$2;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;
    invoke-static {v0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$000(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)Lcom/ime/framework/dbmanager/DbUpdateItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/DbUpdateItem;->isUpdating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$2;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mUpdateItem:Lcom/ime/framework/dbmanager/DbUpdateItem;
    invoke-static {v0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$000(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)Lcom/ime/framework/dbmanager/DbUpdateItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/DbUpdateItem;->cancel()V

    :cond_0
    return-void
.end method
