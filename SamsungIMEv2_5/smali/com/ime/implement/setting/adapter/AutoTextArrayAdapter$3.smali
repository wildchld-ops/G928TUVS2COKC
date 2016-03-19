.class Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$3;
.super Ljava/lang/Object;
.source "AutoTextArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$3;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    iput p2, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$3;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getSelectionMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$3;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->setSelectionMode(Z)V

    invoke-virtual {p1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    const v1, 0x7f100016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$3;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mUserWordCheckList:Ljava/util/List;
    invoke-static {v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$200(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$3;->val$position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$3;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mAutoTextSettings:Lcom/ime/implement/setting/AutoTextSettings;
    invoke-static {v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$300(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Lcom/ime/implement/setting/AutoTextSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/implement/setting/AutoTextSettings;->startSelectionMode()V

    iget-object v1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$3;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mAutoTextSettings:Lcom/ime/implement/setting/AutoTextSettings;
    invoke-static {v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$300(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Lcom/ime/implement/setting/AutoTextSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/implement/setting/AutoTextSettings;->invalidateOptionsMenu()V

    :cond_0
    return v3
.end method
