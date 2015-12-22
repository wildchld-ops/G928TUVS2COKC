.class Lcom/android/phone/operator/usa/AssistedDialingList$4;
.super Ljava/lang/Object;
.source "AssistedDialingList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/AssistedDialingList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/AssistedDialingList;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/AssistedDialingList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/AssistedDialingList$4;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList$4;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->searchtext:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$1400(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/SearchView;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method
