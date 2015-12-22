.class Lcom/android/internal/app/ResolverActivity$ActionItem;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionItem"
.end annotation


# instance fields
.field icon:I

.field id:I

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ActionItem;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/app/ResolverActivity$ActionItem;->id:I

    iput p3, p0, Lcom/android/internal/app/ResolverActivity$ActionItem;->icon:I

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ActionItem;->name:Ljava/lang/String;

    return-void
.end method
