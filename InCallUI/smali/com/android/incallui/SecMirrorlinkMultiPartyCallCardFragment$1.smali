.class Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment$1;
.super Landroid/os/Handler;
.source "SecMirrorlinkMultiPartyCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    iget v1, p1, Landroid/os/Message;->what:I

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    rem-int/lit8 v0, v1, 0x5

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->access$000(Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->access$000(Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->access$000(Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->access$000(Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->access$000(Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v5

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->access$000(Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->access$000(Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v6

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->access$000(Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->access$000(Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;)[Landroid/widget/ImageView;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->access$000(Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;)[Landroid/widget/ImageView;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
