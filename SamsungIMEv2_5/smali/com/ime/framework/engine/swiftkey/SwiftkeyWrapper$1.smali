.class final Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$1;
.super Ljava/lang/Object;
.source "SwiftkeyWrapper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/touchtype_fluency/util/LanguagePack;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/LanguagePack;)I
    .locals 3

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/touchtype_fluency/util/LanguagePack;

    check-cast p2, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$1;->compare(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/LanguagePack;)I

    move-result v0

    return v0
.end method
