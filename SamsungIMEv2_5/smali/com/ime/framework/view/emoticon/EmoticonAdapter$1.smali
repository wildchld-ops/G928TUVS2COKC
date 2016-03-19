.class Lcom/ime/framework/view/emoticon/EmoticonAdapter$1;
.super Ljava/lang/Object;
.source "EmoticonAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/emoticon/EmoticonAdapter;->setClickListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/emoticon/EmoticonAdapter;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/emoticon/EmoticonAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter$1;->this$0:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter$1;->this$0:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

    # getter for: Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonAdapterListener:Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;
    invoke-static {v1}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->access$100(Lcom/ime/framework/view/emoticon/EmoticonAdapter;)Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;->onEmoticonClickListener(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
