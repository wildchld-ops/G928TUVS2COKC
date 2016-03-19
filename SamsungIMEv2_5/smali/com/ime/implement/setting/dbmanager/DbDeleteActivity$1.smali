.class Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$1;
.super Ljava/lang/Object;
.source "DbDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$1;->this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$1;->this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mSelectAllCheckBox:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->access$000(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$1;->this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;

    # invokes: Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->handleSelectAll()V
    invoke-static {v0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->access$100(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)V

    return-void
.end method
