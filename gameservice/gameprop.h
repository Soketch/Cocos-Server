#ifndef __GAMEPROP_H_
#define __GAMEPROP_H_

#include <string>

namespace cero
{
    /**
     * @brief 游戏道具基类
     */
    class PropItem
    {
    public:
    protected:
        bool can_trade; // 是否可交易
        bool can_drop;  // 是否可丢弃
        int m_id;
        int m_type_code;  // 类型编码
        int m_price_buy;  // 购买价格
        int m_price_sell; // 出售价格
        int m_stack_size;  // 
        std::string m_name;
        std::string m_desc;
    };
}
#endif