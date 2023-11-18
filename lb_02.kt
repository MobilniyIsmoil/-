// Создание класса для клиента
data class Client(val id: Int, val name: String, val email: String)

// Создание класса для управления клиентами
class ClientManager {
    private val clients = mutableListOf<Client>()

    // Добавление нового клиента
    fun addClient(client: Client) {
        clients.add(client)
    }

    // Получение списка всех клиентов
    fun getAllClients(): List<Client> {
        return clients
    }

    // Получение клиента по ID
    fun getClientById(id: Int): Client? {
        return clients.find { it.id == id }
    }

    // Удаление клиента по ID
    fun removeClientById(id: Int) {
        clients.removeIf { it.id == id }
    }
}

// Использование класса ClientManager
fun main() {
    val clientManager = ClientManager()

    // Добавление новых клиентов
    val client1 = Client(1, "Иван", "ivan@example.com")
    val client2 = Client(2, "Анна", "anna@example.com")
    clientManager.addClient(client1)
    clientManager.addClient(client2)

    // Получение списка всех клиентов
    val allClients = clientManager.getAllClients()
    println("Список всех клиентов:")
    allClients.forEach { println("${it.id}: ${it.name} (${it.email})") }

    // Получение клиента по ID
    val clientById = clientManager.getClientById(1)
    clientById?.let {
        println("Найден клиент: ${it.name} (${it.email})")
    }

    // Удаление клиента по ID
    clientManager.removeClientById(2)
    println("Клиент с ID 2 удален.")
}
