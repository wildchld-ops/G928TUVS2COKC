.class Lcom/ime/implement/setting/AutoTextSettings$2;
.super Ljava/lang/Object;
.source "AutoTextSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/AutoTextSettings;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings$2;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings$2;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    const v0, 0x7f100016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    # setter for: Lcom/ime/implement/setting/AutoTextSettings;->mFocusedCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1, v0}, Lcom/ime/implement/setting/AutoTextSettings;->access$002(Lcom/ime/implement/setting/AutoTextSettings;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$2;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # setter for: Lcom/ime/implement/setting/AutoTextSettings;->mFocusedPositionCheckBox:I
    invoke-static {v0, p3}, Lcom/ime/implement/setting/AutoTextSettings;->access$102(Lcom/ime/implement/setting/AutoTextSettings;I)I

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$2;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v0}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->setSelectedUserTerm(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
